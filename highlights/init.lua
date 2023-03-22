local transparent = {
  -- apply highlight group to all colorschemes
  -- set the transparency for all of these highlight groups
  CursorColumn = { cterm = {}, ctermbg = "NONE", ctermfg = "NONE" },
  -- ^^^^^^^^ would display if CursorLine bg is set to NONE
  CursorLine = { ctermbg = "NONE", ctermfg = "NONE" },
  CursorLineNr = { cterm = {}, ctermbg = "NONE", ctermfg = "NONE" },
  LineNr = {},
  SignColumn = {},
  StatusLine = {},
  Normal = { bg = "NONE", ctermbg = "NONE" },
  NormalNC = { bg = "NONE", ctermbg = "NONE" },
  NeoTreeNormal = { bg = "NONE", ctermbg = "NONE" },
  NeoTreeNormalNC = { bg = "NONE", ctermbg = "NONE" },
}

if vim.t.is_transparent == 1 then return transparent end

return {}
