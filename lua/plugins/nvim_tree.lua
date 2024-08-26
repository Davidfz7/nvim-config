return {
	url = "https://github.com/nvim-tree/nvim-tree.lua.git",
    version = "*",
    lazy = false,
    dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
    init = function()
        -- disable netrw
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- (optional) enable 24-bit colour
        vim.opt.termguicolors = true
    end,

    config = function()
        require("nvim-tree").setup({}) 
    end,
} 

