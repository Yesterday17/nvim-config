local status, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status then
    vim.notify("nvim-lsp-installer was not found.")
  return
end

require("nvim-lsp-installer").setup {}
require("lsp.lua").setup {}
require("lsp.rust").setup {}
