return {
	setup = function()
		local map = require("utils.keymap").map

		map("n", "<C-w>", ":BufferClose<CR>") -- Ctrl + W 关闭页面
		map("n", "<A-w>", ":BufferClose<CR>") -- Alt + W 关闭页面

		map("n", "<leader>h", ":BufferPrevious<CR>")
		map("n", "<leader>l", ":BufferNext<CR>")
	end,
}
