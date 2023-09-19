return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
 	local nvimtree = require("nvim-tree")     
	-- disable netrw at the very start of your init.lua
	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1

	-- set termguicolors to enable highlight groups
        vim.opt.termguicolors = true
        nvimtree.setup()
        
        -- Open NvimTree if neovim is open
	vim.cmd('autocmd VimEnter * NvimTreeToggle')
        
        --Set keymaps for open tree
	vim.api.nvim_set_keymap('n', '<leader>ex', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

	
end
}
