require("config.lazy")
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.textwidth = 80
vim.opt.formatoptions = {n = true, j = true, t = true}
vim.wo.number = true
vim.o.mouse = ""

vim.api.nvim_set_keymap('n', '<leader>ex', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- for resizing buffer in NeoVim

-- increase width
vim.keymap.set('n', '<leader>.', ':vertical resize +5<CR>')

-- decrease width
vim.keymap.set('n', '<leader>,', ':vertical resize -5<CR>')

-- increase height, mh = more height
vim.keymap.set('n', '<leader>mh', ':resize +5<CR>')

-- decrease height, dh = decrease height
vim.keymap.set('n', '<leader>dh', ':resize -5<CR>')


