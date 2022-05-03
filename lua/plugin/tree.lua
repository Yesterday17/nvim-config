local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
	vim.notify("nvim-tree was not found.")
	return
end

local tree_keys = require("key.plugin.tree")
tree_keys.setup()

nvim_tree.setup({
	git = {
		enable = true,
	},
	update_cwd = false,
	open_on_setup = true,
	update_focused_file = {
		enable = true,
		update_cwd = false,
	},
	-- 隐藏 .文件 和 node_modules 文件夹
	filters = {
		dotfiles = true,
		custom = { "node_modules" },
	},
	view = {
		-- 宽度
		width = 40,
		-- 也可以 'right'
		side = "left",
		-- 隐藏根目录
		hide_root_folder = false,
		-- 自定义列表中快捷键
		mappings = {
			custom_only = false,
			list = tree_keys.mapping_list,
		},
		-- 不显示行数
		number = false,
		relativenumber = false,
		-- 显示图标
		signcolumn = "yes",
	},
	actions = {
		open_file = {
			-- 首次打开大小适配
			resize_window = true,
			-- 打开文件时关闭
			quit_on_open = false,
		},
	},
})
