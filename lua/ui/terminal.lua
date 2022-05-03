-- 进入 Terminal 时自动切换为编辑模式
-- https://github.com/neovim/neovim/issues/9483#issuecomment-569417862
vim.cmd [[autocmd TermOpen * startinsert]]
vim.cmd [[autocmd TermOpen * nnoremap <buffer><LeftRelease> <LeftRelease>i]]
-- vim.cmd [[autocmd TermClose * q]]
