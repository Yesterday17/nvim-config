local status, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status then
	vim.notify("nvim-lsp-installer was not found.")
	return
end

lsp_installer.setup({})
require("lsp.null-ls")
require("lsp.completion")
require("lsp.ui")

require("lsp.lua").setup()
require("lsp.rust").setup()
