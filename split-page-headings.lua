-- For a page that renders one section fragment on its own.
-- The fragment opens with a level 2 heading that repeats the page title,
-- because the combined Linear Algebra page includes the same fragment as a section.
-- Drop that heading and move every later heading deeper than level 2 up one level,
-- so the page body starts at level 2 under the title.
-- The fragments that use this filter have no other level 2 heading.
function Pandoc(doc)
  local title = pandoc.utils.stringify(doc.meta.title or "")
  local dropped = false
  local blocks = pandoc.List()
  for _, block in ipairs(doc.blocks) do
    if block.t == "Header" then
      if not dropped and block.level == 2
        and pandoc.utils.stringify(block.content):lower() == title:lower() then
        dropped = true
        -- Keep the heading's id as an empty anchor so links to it still work.
        if block.identifier ~= "" then
          blocks:insert(pandoc.Para({pandoc.Span({}, pandoc.Attr(block.identifier))}))
        end
      else
        if dropped and block.level > 2 then
          block.level = block.level - 1
        end
        blocks:insert(block)
      end
    else
      blocks:insert(block)
    end
  end
  if not dropped then
    io.stderr:write("split-page-headings.lua: no level 2 heading matches the title '" .. title .. "'\n")
  end
  doc.blocks = blocks
  return doc
end
