return {
  setup = function()
    local map = require("utils.keymap").map
    -- Make it easier to focus to tree with <leader> + lowercase b
    map("n", "<leader>b", ":NvimTreeFocus<CR>")
    -- Make it a bit harder to close the tree with <leader> + uppercase B
    map("n", "<leader>B", ":NvimTreeToggle<CR>")
  end,

  mapping_list = {
    -- 打开文件或文件夹
    { key = { "o", "<2-LeftMouse>" }, action = "edit" },
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
    -- 修改成大写O，弄得难触发一点
    { key = "O", action = "system_open" },
  },
}
