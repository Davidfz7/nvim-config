return {
    'nvim-treesitter/nvim-treesitter',
    build = function()
    require("nvim-treesitter.install").update({with_sync = true})()
    end,
    config = function() 
     local configs = require("nvim-treesitter.configs")
     local install_confg = require("nvim-treesitter.install")
         configs.setup({
        ensure_installed = {"python"},
        sync_install = false,
        highlight = {enable = true},
        indent = {enable = true}

     }) 
     install_confg.prefer_git = true

 end

}
