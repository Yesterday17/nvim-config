local map = require("../utils/keymap").map

-- 取消 s 默认功能
map("n", "s", "")
-- windows 分屏快捷键
map("n", "sv", ":vsp<CR>")
map("n", "sh", ":sp<CR>")
-- 关闭当前
map("n", "sc", "<C-w>c")
-- 关闭其他
map("n", "so", "<C-w>o")
-- Alt + hjkl  窗口之间跳转
map("n", "<A-h>", "<C-w>h")
map("n", "<A-j>", "<C-w>j")
map("n", "<A-k>", "<C-w>k")
map("n", "<A-l>", "<C-w>l")

-- 左右比例控制
map("n", "<C-Left>", ":vertical resize -2<CR>")
map("n", "<C-Right>", ":vertical resize +2<CR>")
map("n", "s,", ":vertical resize -20<CR>")
map("n", "s.", ":vertical resize +20<CR>")
-- 上下比例
map("n", "sj", ":resize +10<CR>")
map("n", "sk", ":resize -10<CR>")
map("n", "<C-Down>", ":resize +2<CR>")
map("n", "<C-Up>", ":resize -2<CR>")
-- 等比例
map("n", "s=", "<C-w>=")

-- Terminal相关
map("n", "<leader>t", ":sp | terminal<CR>")
map("n", "<leader>vt", ":vsp | terminal<CR>")
map("t", "<Esc>", "<C-\\><C-n>")
map("t", "<A-h>", [[ <C-\><C-N><C-w>h ]])
map("t", "<A-j>", [[ <C-\><C-N><C-w>j ]])
map("t", "<A-k>", [[ <C-\><C-N><C-w>k ]])
map("t", "<A-l>", [[ <C-\><C-N><C-w>l ]])
