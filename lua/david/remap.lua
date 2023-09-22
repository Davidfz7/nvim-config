opts = {noremap = true,silent = true}
vim.g.mapleader = " "
--Paste content from clipboard
vim.keymap.set("n", "<leader>pc", [[:r!xsel -o -b<CR>]], opts)
--Search word(s)
vim.keymap.set("n", "<C-f>", ':/', opts)
--Replace word
vim.keymap.set("n", "<C-n>", ':s//', opts)
--Stop highlighting word(s)
vim.keymap.set("n", "<leader>stop",':noh<CR>', opts)
--Replace all ocurrences
vim.keymap.set("n", "<S-F>", ':%s//', opts )

vim.api.nvim_set_keymap('n', '<leader>bf', [[:lua require("buffer_manager.ui").toggle_quick_menu()<CR>]], opts)

