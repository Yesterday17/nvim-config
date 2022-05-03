local map = require("utils.keymap").map

-- visual模式下缩进代码
map("v", "<", "<gv")
map("v", ">", ">gv")
-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv")
map("v", "K", ":move '<-2<CR>gv-gv")
