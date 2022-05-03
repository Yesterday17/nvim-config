local theme = "tokyonight"
local ok, _ = pcall(vim.cmd, "colorscheme " .. theme)
if not ok then
  vim.notify("Colorscheme `" .. theme .. "` was not found")
  return
end
