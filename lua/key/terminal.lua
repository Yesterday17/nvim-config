local map = require('../utils/keymap').map

map("n", "<leader>t", ":MyTerminal<CR>")
map("n", "<leader>vt", ":vsp | ToggleTerminal<CR>")
-- map("t", "<Esc>", "<C-\\><C-n>")
-- map("t", "<A-h>", [[ <C-\><C-N><C-w>h ]])
-- map("t", "<A-j>", [[ <C-\><C-N><C-w>j ]])
-- map("t", "<A-k>", [[ <C-\><C-N><C-w>k ]])
-- map("t", "<A-l>", [[ <C-\><C-N><C-w>l ]])

local terminal_open = false

vim.api.nvim_create_user_command("MyTerminal",
  function()
    if terminal_open then
      -- 打开状态，隐藏终端并关闭 View
      vim.api.nvim_command('ToggleTerminal')
      vim.api.nvim_command('q')
    else
      -- 隐藏状态，打开终端并创建 View
      vim.api.nvim_command('10sp | ToggleTerminal')
    end
    terminal_open = not terminal_open
  end, {})
