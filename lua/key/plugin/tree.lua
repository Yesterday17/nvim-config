return {
	setup = function()
		local map = require("utils.keymap").map
		map("n", "<A-m>", ":NvimTreeToggle<CR>")
	end,

	mapping_list = {
		-- 打开文件或文件夹
		{ key = { "<CR>", "i", "o", "<2-LeftMouse>" }, action = "edit" },
		-- 分屏打开文件
		{ key = "v", action = "vsplit" },
		{ key = "h", action = "split" },
		-- 显示隐藏文件
		{ key = "I", action = "toggle_ignored" }, -- Ignore (node_modules)
		{ key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
		-- 文件操作
		-- 刷新，TODO：修改成 Alt+R
		{ key = "<F5>", action = "refresh" },
		{ key = "a", action = "create" },
		{ key = "d", action = "remove" },
		{ key = "r", action = "rename" },
		{ key = "x", action = "cut" },
		{ key = "c", action = "copy" },
		{ key = "p", action = "paste" },
		-- 使用系统编辑器打开文件
		-- 修改成大写S，弄得难触发一点
		{ key = "S", action = "system_open" },
	},
}
