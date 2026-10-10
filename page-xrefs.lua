-- Resolve cross-references between the pages of a chapter split across several pages.
--
-- Quarto resolves an @id reference only when its target is on the same page,
-- so splitting a long chapter would otherwise leave every reference from one
-- of its pages to another as the literal text "?@thm-...". The groups of pages
-- are listed under `page-xrefs` in _quarto.yml:
--
--   page-xrefs:
--     - index: linear-algebra.qmd
--       pages: [linear-algebra-vectors.qmd, linear-algebra-matrices.qmd, ...]
--
-- On every page of the site, this filter:
--
-- - rewrites a reference (@thm-x, [-@thm-x]) whose target is on another page of
--   a group into a link to that page, labelled the way Quarto labels it there,
--   followed by the page's title ("Theorem 12 in Subspaces and Rank");
-- - rewrites a link to "#id", or to "<index>#id", whose target is on one of the
--   group's pages into a link to that page;
-- - hands math-xrefs.lua the same labels, through the document metadata, for
--   references written inside math;
-- - on a group's index page, in HTML, adds a script that sends a link to
--   "<index>.html#id" on to the page that now holds #id, so links into the
--   chapter from before the split, and from other sites, keep working.
--
-- A page's targets and their numbers are read from its source: the filter
-- expands its includes, parses it, and numbers theorem-type divs, figures,
-- tables, equations and sections in document order, the way Quarto numbers
-- them on a page. Content that the current format hides
-- (.content-visible / .content-hidden with when-format or unless-format) is skipped,
-- as Quarto skips it.

-- Quarto joins a label and its number with a non-breaking space.
local NBSP = utf8.char(160)

local labels = {
  thm = "Theorem", lem = "Lemma", cor = "Corollary", prp = "Proposition",
  cnj = "Conjecture", def = "Definition", exm = "Example", exr = "Exercise",
  rem = "Remark", sol = "Solution", eq = "Equation", fig = "Figure",
  tbl = "Table", sec = "Section",
}

-- Format matching for .content-visible and .content-hidden, as Quarto does it:
-- "html" covers every HTML-based format, revealjs included.
local function format_matches(fmt, name)
  if name == fmt then return true end
  if name == "html" then return fmt == "html" or fmt == "revealjs" end
  if name == "latex" then return fmt == "pdf" end
  if name == "word" then return fmt == "docx" end
  return false
end

local function is_hidden(div, fmt)
  local when, unless = div.attributes["when-format"], div.attributes["unless-format"]
  if div.classes:includes("content-visible") then
    if when and not format_matches(fmt, when) then return true end
    if unless and format_matches(fmt, unless) then return true end
  elseif div.classes:includes("content-hidden") then
    if when and format_matches(fmt, when) then return true end
    if unless and not format_matches(fmt, unless) then return true end
  end
  return false
end

local function read_file(path)
  local f = io.open(path, "r")
  if not f then return nil end
  local text = f:read("a")
  f:close()
  return text
end

-- The source of a page with its includes expanded. Include paths are resolved
-- against the project root, as they are for a page at the root. The shared
-- math macros define no targets, so they are left out.
local function expand(path, root, depth)
  local text = read_file(root .. "/" .. path)
  if not text then return "" end
  if depth > 20 then return text end
  return (text:gsub("{{<%s*include%s+(%S+)%s*>}}", function(inc)
    if inc:match("^latex%-macros/") then return "" end
    return expand(inc, root, depth + 1)
  end))
end

-- Number the targets of one page: returns {title = ..., ids = {id = label}}.
local function scan(path, root, fmt)
  -- Two pieces of Quarto syntax that Pandoc's reader takes differently:
  -- ":::{#id}" opens a div only with a space after the colons, and an
  -- executable chunk's "```{r}" is not a code fence at all, so its closing
  -- fence would open one and swallow the rest of the page.
  local text = ("\n" .. expand(path, root, 0))
    :gsub("\n(:::+){", "\n%1 {")
    :gsub("\n([ \t]*```+)[ \t]*{[^}\n]*}[^\n]*", "\n%1")
  local doc = pandoc.read(text, "markdown")
  local ids, counts, sections = {}, {}, {}
  local function note(id)
    if not id or id == "" or ids[id] then return end
    local prefix = id:match("^(%a+)%-")
    if prefix and labels[prefix] and prefix ~= "sec" then
      counts[prefix] = (counts[prefix] or 0) + 1
      ids[id] = labels[prefix] .. NBSP .. counts[prefix]
    else
      -- Any other id is still a link target on this page.
      ids[id] = false
    end
  end
  doc:walk {
    traverse = "topdown",
    Div = function(el)
      if is_hidden(el, fmt) then return nil, false end
      note(el.identifier)
    end,
    Header = function(el)
      local number
      if not el.classes:includes("unnumbered") then
        -- Pages start at level 2: "##" is numbered 1, "###" 1.1, and so on.
        local level = el.level - 1
        sections[level] = (sections[level] or 0) + 1
        for l = level + 1, #sections do sections[l] = nil end
        local parts = {}
        for l = 1, level do table.insert(parts, tostring(sections[l] or 0)) end
        number = table.concat(parts, ".")
      end
      if el.identifier ~= "" and not ids[el.identifier] then
        if number then
          ids[el.identifier] = "Section" .. NBSP .. number
        else
          ids[el.identifier] = pandoc.utils.stringify(el.content)
        end
      end
    end,
    Figure = function(el) note(el.identifier) end,
    Image = function(el) note(el.identifier) end,
    Table = function(el) note(el.identifier) end,
    Span = function(el) note(el.identifier) end,
    CodeBlock = function(el)
      for id in el.text:gmatch("#|%s*label:%s*([%w%-_]+)") do note(id) end
    end,
    Str = function(el)
      local id = el.text:match("^{#(eq%-[%w%-]*%w)}$")
      if id then note(id) end
    end,
  }
  local title = doc.meta.title and pandoc.utils.stringify(doc.meta.title) or path
  return { title = title, ids = ids }
end

local function current_format()
  if quarto.doc.is_format("revealjs") then return "revealjs" end
  if quarto.doc.is_format("html") then return "html" end
  if quarto.doc.is_format("pdf") or quarto.doc.is_format("latex") then return "pdf" end
  if quarto.doc.is_format("docx") then return "docx" end
  return FORMAT
end

local function stem(path)
  return (path:gsub("%.qmd$", ""))
end

local groups = {}     -- { {index = "x.qmd", pages = {"a.qmd", ...}} }
local targets = nil   -- id -> {page = "a.qmd", label = "Theorem 3", title = "..."}
local local_ids = {}  -- ids on the page being rendered
local this_page = nil -- the page being rendered, relative to the project root
local site_url = nil

local function load_targets(fmt)
  if targets then return end
  targets = {}
  local root = quarto.project.directory or "."
  local input = quarto.doc.input_file or ""
  this_page = input:sub(1, #root + 1) == root .. "/" and input:sub(#root + 2) or input
  local_ids = scan(this_page, root, fmt).ids
  for _, group in ipairs(groups) do
    for _, page in ipairs(group.pages) do
      if page ~= this_page then
        local found = scan(page, root, fmt)
        for id, label in pairs(found.ids) do
          if targets[id] == nil then
            targets[id] = { page = page, label = label, title = found.title }
          end
        end
      end
    end
  end
end

local function remote(id)
  if local_ids[id] ~= nil then return nil end
  return targets[id]
end

local function url_for(t, id)
  local fmt = current_format()
  if fmt == "html" or fmt == "revealjs" then
    -- Quarto turns a link to a .qmd page into a link to its .html output.
    return t.page .. "#" .. id
  end
  -- A handout has no neighbouring pages, so it links to the website.
  local base = site_url or ""
  if base ~= "" and not base:match("/$") then base = base .. "/" end
  return base .. stem(t.page) .. ".html#" .. id
end

local function ref_text(t, suppress)
  local label = t.label
  if suppress then label = label:gsub("^%a+" .. NBSP, "") end
  return label .. " in " .. t.title
end

-- The target of a citation that names a cross-reference on another page.
-- "@Thm-x" is Quarto's capitalized form of "@thm-x"; the labels are capitalized already.
local function cited_target(c)
  local id = c.id:sub(1, 1):lower() .. c.id:sub(2)
  local prefix = id:match("^(%a+)%-")
  if not (prefix and labels[prefix]) then return nil end
  local t = remote(id)
  if t and t.label then return t, id end
end

local function cite(el)
  local any = false
  for _, c in ipairs(el.citations) do
    if cited_target(c) then any = true end
  end
  if not any then return nil end
  local out = pandoc.Inlines {}
  for i, c in ipairs(el.citations) do
    if i > 1 then out:insert(pandoc.Str(",")); out:insert(pandoc.Space()) end
    local t, id = cited_target(c)
    if t then
      out:insert(pandoc.Link(ref_text(t, c.mode == "SuppressAuthor"), url_for(t, id)))
    else
      out:insert(pandoc.Cite({ pandoc.Str("@" .. c.id) }, { c }))
    end
  end
  return out
end

local function link(el)
  local page, id = el.target:match("^([^#]*)#(.+)$")
  if not id then return end
  local t
  if page == "" then
    t = remote(id)
  else
    for _, group in ipairs(groups) do
      local index = stem(group.index)
      if page == group.index or page == index .. ".html" then
        if local_ids[id] ~= nil then
          -- The target is on this page: link to it directly, not through the index.
          el.target = "#" .. id
          return el
        end
        t = targets[id]
      end
    end
  end
  if t then
    el.target = url_for(t, id)
    return el
  end
end

-- The script for an index page: a link to a target that moved to another
-- page is sent on to it.
local function redirect_script()
  local map = {}
  for id, t in pairs(targets) do
    if local_ids[id] == nil then
      table.insert(map, string.format("%q:%q", id, stem(t.page) .. ".html"))
    end
  end
  table.sort(map)
  return pandoc.RawBlock("html", table.concat({
    "<script>",
    "(function () {",
    "  var moved = {" .. table.concat(map, ",") .. "};",
    "  function follow() {",
    "    var id = decodeURIComponent(location.hash.slice(1));",
    "    if (id && !document.getElementById(id) && moved[id]) {",
    "      location.replace(moved[id] + location.hash);",
    "    }",
    "  }",
    "  follow();",
    "  window.addEventListener('hashchange', follow);",
    "})();",
    "</script>",
  }, "\n"))
end

return {
  {
    Meta = function(meta)
      local config = meta["page-xrefs"]
      if config then
        for _, g in ipairs(config) do
          local pages = {}
          for _, p in ipairs(g.pages or {}) do table.insert(pages, pandoc.utils.stringify(p)) end
          table.insert(groups, { index = pandoc.utils.stringify(g.index or ""), pages = pages })
        end
      end
      local website = meta.website
      if website and website["site-url"] then
        site_url = pandoc.utils.stringify(website["site-url"])
      end
    end,
  },
  {
    Pandoc = function(doc)
      if #groups == 0 then return nil end
      load_targets(current_format())
      doc = doc:walk { Cite = cite, Link = link }
      -- References inside math are rewritten by math-xrefs.lua, which reads
      -- these labels from the metadata.
      local math = {}
      for id, t in pairs(targets) do
        if t.label and local_ids[id] == nil then
          math[id] = pandoc.MetaMap {
            label = t.label .. " in " .. t.title,
            url = url_for(t, id),
          }
        end
      end
      doc.meta["page-xrefs-math"] = pandoc.MetaMap(math)
      local html = quarto.doc.is_format("html") and not quarto.doc.is_format("revealjs")
      for _, group in ipairs(groups) do
        if group.index == this_page and html then
          doc.blocks:insert(redirect_script())
        end
      end
      return doc
    end,
  },
}
