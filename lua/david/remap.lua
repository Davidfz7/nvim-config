
vim.g.mapleader = " "
--Este comando de aca es para cortar al portapapeles
vim.keymap.set("n", "<leader>cl", [[:.!xsel -i -b<CR>]], {noremap=true, silent=true})
--Paste content from clipboard
vim.keymap.set("n", "<leader>p", [[:r!xsel -o -b<CR>]], {noremap = true, silent = true})


--[[function GETFILE()
  languages = {".py", ".lua", ".js"} -- Agrega tus extensiones aquí    
    local current_file = vim.api.nvim_buf_get_name(0)
    
    local cmd = ""
    for i = 1, #languages do
        if string.find(current_file, "%b"..languages[i]) then
             ext = string.gsub(languages[i], "%.", "")
             cmd = ext.." "..current_file
     	     return cmd  
     end
    end
    end


local Terminal  = require('toggleterm.terminal').Terminal
local testing = Terminal:new({ cmd = GETFILE(), hidden = true, close_on_exit = false })
print(testing.cmd)
function _lazygit_toggle()
  testing:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})]]--
vim.api.nvim_set_keymap('n', '<leader>bf', [[:lua require("buffer_manager.ui").toggle_quick_menu()<CR>]], { noremap = true, silent = true })



