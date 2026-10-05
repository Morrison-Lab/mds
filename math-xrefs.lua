-- Resolve cross-references written inside math.
--
-- Quarto resolves @id references in prose, but not inside math, so an
-- annotation such as \text{(@thm-spectral)} in an aligned derivation used to
-- reach the reader as the literal text "@thm-spectral". This filter numbers
-- theorem-type divs and equations in document order, the way Quarto numbers
-- them on a page, and rewrites each @id inside math to its label
-- ("Theorem 59"), linked to the target in HTML output.

local labels = {
  thm = "Theorem", lem = "Lemma", cor = "Corollary", prp = "Proposition",
  cnj = "Conjecture", def = "Definition", exm = "Example", exr = "Exercise",
  rem = "Remark", sol = "Solution", eq = "Equation",
}

local resolved = {}
local counts = {}

local function note(id)
  local prefix = id and id:match("^(%a+)%-")
  if prefix and labels[prefix] and not resolved[id] then
    counts[prefix] = (counts[prefix] or 0) + 1
    resolved[id] = labels[prefix] .. "~" .. counts[prefix]
  end
end

-- Rewrite "@id" inside a TeX string. Inside \text{...} the reference closes
-- the text, emits the label and reopens the text, so that the label is set
-- in math mode where \href works.
local function rewrite(tex)
  local html = quarto.doc.is_format("html")
  local out, i, depth, text_depths = {}, 1, 0, {}
  while i <= #tex do
    local c = tex:sub(i, i)
    if tex:sub(i, i + 5) == "\\text{" then
      table.insert(out, "\\text{")
      depth = depth + 1
      text_depths[depth] = true
      i = i + 6
    elseif c == "{" then
      depth = depth + 1
      text_depths[depth] = false
      table.insert(out, c)
      i = i + 1
    elseif c == "}" then
      text_depths[depth] = nil
      depth = depth - 1
      table.insert(out, c)
      i = i + 1
    elseif c == "@" then
      local id = tex:match("^@(%a+%-[%w%-]*%w)", i)
      local label = id and resolved[id]
      if label then
        local shown = "\\text{" .. label .. "}"
        if html then shown = "\\href{#" .. id .. "}{" .. shown .. "}" end
        if text_depths[depth] then
          table.insert(out, "}" .. shown .. "\\text{")
        else
          table.insert(out, shown)
        end
        i = i + 1 + #id
      else
        table.insert(out, c)
        i = i + 1
      end
    else
      table.insert(out, c)
      i = i + 1
    end
  end
  return table.concat(out)
end

return {
  -- Pass 1: number the targets in document order. At this stage Quarto
  -- holds theorem-type divs as Theorem nodes, and an equation label is still
  -- the literal string "{#eq-...}" after its display math.
  {
    Theorem = function(el) note(el.identifier) end,
    Str = function(el)
      local id = el.text:match("^{#(eq%-[%w%-]*%w)}$")
      if id then note(id) end
    end,
  },
  -- Pass 2: rewrite the references inside math.
  {
    Math = function(el)
      if el.text:find("@", 1, true) then
        el.text = rewrite(el.text)
        return el
      end
    end,
  },
}
