return {
  -- apply highlight group to all colorschemes
  -- set the transparency for all of these highlight groups
  CursorColumn = { cterm = {}, ctermbg = "NONE", ctermfg = "NONE" },
  -- ^^^^^^^^ would display if CursorLine bg is set to NONE
  CursorLine = { bg = "NONE", fg = "NONE" },
  CursorLineNr = { cterm = {}, ctermbg = "NONE", ctermfg = "NONE" },
  LineNr = {},
  SignColumn = {},
  StatusLine = {},
  Normal = { bg = "NONE", ctermbg = "NONE" },
  NormalNC = { bg = "NONE", ctermbg = "NONE" },
  NeoTreeNormal = { bg = "NONE", ctermbg = "NONE" },
  NeoTreeNormalNC = { bg = "NONE", ctermbg = "NONE" },
}