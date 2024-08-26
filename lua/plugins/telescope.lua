return {
    url = "https://github.com/nvim-telescope/telescope.nvim.git",
    branch = '0.1.x',
    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function ()
       local telescope_builtin = require('telescope.builtin')
       vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, {})
       vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep, {})
       vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers, {})
       vim.keymap.set('n', '<leader>fh', telescope_builtin.help_tags, {}) 
    end
}
