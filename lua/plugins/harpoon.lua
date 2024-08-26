return {
    url = "https://github.com/ThePrimeagen/harpoon.git",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function ()
        local harpoon = require("harpoon")
        local harpoon_ui = require("harpoon.ui")
        local harpoon_mark = require("harpoon.mark")

        harpoon.setup({})

        vim.keymap.set('n', "<leader>ah", function ()
           harpoon_mark.add_file() 
        end)

        vim.keymap.set('n', "<leader>th", function ()
           harpoon_ui.toggle_quick_menu() 
        end)

    end, 
}