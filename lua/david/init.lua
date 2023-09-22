vim.cmd.colorscheme("habamax")
vim.cmd(':set nu')
vim.cmd(':set autoindent')
vim.cmd(':set expandtab')
vim.cmd(':set shiftwidth=4')
vim.cmd(':set smarttab')
vim.cmd(':set tabstop=4')
vim.cmd(':set scrolloff=1')
vim.cmd('set ignorecase')
--When searching try to be smart about cases
vim.cmd('set smartcase')
--Highlight search results
vim.cmd('set hlsearch')
--Makes search act like search in modern browsers
vim.cmd('set incsearch')
require("david.remap")
require("david.lazy")
require("david.scripts")
