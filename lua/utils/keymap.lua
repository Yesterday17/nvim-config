local opt = { noremap = true, silent = true }

local function map_key(mode, lhs, rhs)
	return vim.api.nvim_set_keymap(mode, lhs, rhs, opt)
end

local function buf_map_key(buf, mode, lhs, rhs)
	return vim.api.nvim_buf_set_keymap(buf, mode, lhs, rhs, opt)
end

return {
	map = map_key,
	map_buf = buf_map_key,
}
