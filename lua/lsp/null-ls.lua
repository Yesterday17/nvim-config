local status, null_ls = pcall(require, "null-ls")
if not status then
	vim.notify("null-ls was not found.")
	return
end

local formatting = null_ls.builtins.formatting

null_ls.setup({
	debug = false,
	sources = {
		formatting.shfmt,
		formatting.stylua,
		formatting.rustfmt,
		formatting.prettier.with({ -- 只比默认配置少了 markdown
			filetypes = {
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"vue",
				"css",
				"scss",
				"less",
				"html",
				"json",
				"yaml",
				"graphql",
			},
			prefer_local = "node_modules/.bin",
		}),
		-- formatting.fixjson,
		-- formatting.black.with({ extra_args = { "--fast" } }),
	},
	-- 保存自动格式化
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
		end
	end,
})
