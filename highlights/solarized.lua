local solarized = require "solarized"
local colors = solarized.colors

return {
  -- disable italic
  Comment = { fg = colors.comment, italic = false },
  Italic = { italic = false },
  ["@parameter"] = { fg = colors.content, italic = false },
  LspCodeLens = { fg = colors.comment, italic = false },
  LspCodeLensSeparator = { fg = colors.comment, italic = false },
  NvimTreeOpenedFolderName = { fg = colors.fg, bold = true, italic = false },
}
