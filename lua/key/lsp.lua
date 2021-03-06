local function map_keys(mapbuf)
	-- rename
	mapbuf("n", "<leader>rn", "<cmd>Lspsaga rename<CR>")
	-- code action
	mapbuf("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>")
	-- go xx
	-- mapbuf("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
	mapbuf("n", "gd", "<cmd>Lspsaga preview_definition<CR>")
	mapbuf("n", "gh", "<cmd>Lspsaga hover_doc<CR>")
	mapbuf("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
	mapbuf("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
	mapbuf("n", "gr", "<cmd>Lspsaga lsp_finder<CR>")
	-- diagnostic
	mapbuf("n", "gp", "<cmd>Lspsaga show_line_diagnostics<CR>")
	mapbuf("n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
	mapbuf("n", "gj", "<cmd>Lspsaga diagnostic_jump_next<CR>")
	mapbuf("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>")
	-- 没用到
	-- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
	-- mapbuf("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opt)
	-- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
	-- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
	-- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
	-- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end

local map_buf = require("utils.keymap").map_buf
local function bind_keys(bufnr)
	return map_keys(function(...)
		map_buf(bufnr, ...)
	end)
end

return {
	bind_keys = bind_keys,
}
