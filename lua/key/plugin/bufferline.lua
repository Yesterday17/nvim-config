return {
	setup = function()
		local map = require("utils.keymap").map

		map("n", "<C-w>", ":Bdelete!<CR>") -- Ctrl + W 关闭页面
		map("n", "<A-w>", ":Bdelete!<CR>") -- Alt + W 关闭页面
		map("n", "<leader>bl", ":BufferLineCloseRight<CR>")
		map("n", "<leader>bh", ":BufferLineCloseLeft<CR>")
		map("n", "<leader>bc", ":BufferLinePickClose<CR>")

		map("n", "<leader>h", ":bp<CR>")
		map("n", "<leader>l", ":bn<CR>")
	end,
}
