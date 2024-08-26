return {
    url = "https://github.com/folke/tokyonight.nvim.git", 
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
               
        vim.cmd[[colorscheme tokyonight]]
    end,
}


