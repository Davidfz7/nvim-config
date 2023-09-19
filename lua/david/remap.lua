
vim.g.mapleader = " "
--Este comando de aca es para cortar al portapapeles
vim.keymap.set("n", "<leader>cl", [[:.!xsel -i -b<CR>]], {noremap=true, silent=true})
--Paste content from clipboard
vim.keymap.set("n", "<leader>p", [[:r!xsel -o -b<CR>]], {noremap = true, silent = true})


