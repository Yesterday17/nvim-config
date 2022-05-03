return {
	setup = function()
		local map = require("utils.keymap").map

		map("n", "<leader>ff", ":Telescope find_files<CR>")
		map("n", "<A-f>", ":Telescope find_files<CR>")
		map("n", "<leader>fg", ":Telescope live_grep<CR>")
		map("n", "<A-g>", ":Telescope live_grep<CR>")
	end,
	mapping_list = {
		i = {
			-- 上下移动
			["<A-j>"] = "move_selection_next",
			["<A-k>"] = "move_selection_previous",
			["<Down>"] = "move_selection_next",
			["<Up>"] = "move_selection_previous",
			-- 历史记录
			["<A-n>"] = "cycle_history_next",
			["<A-p>"] = "cycle_history_prev",
			-- 关闭窗口
			["<A-c>"] = "close",
			-- 预览窗口上下滚动
			["<A-u>"] = "preview_scrolling_up",
			["<A-d>"] = "preview_scrolling_down",
		},
	},
}
