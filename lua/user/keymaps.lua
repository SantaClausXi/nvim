vim.keymap.set("n", "<DOWN>", "<NOP>")
vim.keymap.set("n", "<UP>", "<NOP>")
vim.keymap.set("n", "<LEFT>", "<NOP>")
vim.keymap.set("n", "<RIGHT>", "<NOP>")
vim.keymap.set("n", "<C-n>", ":cn<CR>")
vim.keymap.set("n", "<C-b>", ":cp<CR>")
vim.keymap.set( {"n", "v" }, "<C-K>", ":<C-U>silent! '<,'>pyf /usr/share/clang/clang-format-9/clang-format.py<cr>")

vim.keymap.set("n", "<leader>~", ':source ~/.vimrc<CR>:redraw!<CR>:echo "~/.vimrc reloaded!"<CR>')
vim.keymap.set("n", "<leader>o", "<Esc>:exec \"e \" . expand('%:p:h')<CR>")
