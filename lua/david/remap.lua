opts = {noremap = true,silent = true}

--Paste content from clipboard
vim.keymap.set("n", "<leader>pc", [[:r!xsel -o -b<CR>]], opts)
--Search word(s)
vim.keymap.set("n", "<C-f>", ':/', opts)
--Replace word
vim.keymap.set("n", "<C-n>", ':s//', opts)
--Stop highlighting word(s)
vim.keymap.set("n", "<leader>stop",':noh<CR>', opts)
--Replace all ocurrences
vim.keymap.set("n", "<S-F>", ':%s//', opts )
----------------------------------------------------
--Harpoon config 
--Mark files to revisit later
local pingIt = require("harpoon.mark")
local harpoonUI = require("harpoon.ui")
vim.keymap.set('n', "<leader>ping", function() 
                                  
            pingIt.add_file()
    end, opts)

vim.keymap.set('n', "<leader>bf", function() 
                                  
            harpoonUI.toggle_quick_menu()
    end, opts)
---------------------------------------------------- 
--Create a script for opening and running compiler according to the language--
local Terminal  = require('toggleterm.terminal').Terminal
local execute= Terminal:new({{ hidden = true, close_on_exit = false},
on_open = function(term)
	---------------------------------------------------------------------
	local enter = vim.api.nvim_replace_termcodes("<CR>", true, true,true )
	local buffer_path = vim.fn.fnamemodify(vim.fn.expand('#:p'), ':h')
	local buffer_name = vim.fn.fnamemodify(vim.fn.expand('#:p'), ':t')
	---------------------------------------------------------------------	
       	
	--------------------------Go to file path----------------------------
	vim.fn.feedkeys('cd '..buffer_path..enter)
	vim.fn.feedkeys('clear'..enter)
	if string.find(buffer_name, "lua") then
		vim.fn.feedkeys('lua '..buffer_name..enter)
	elseif string.find(buffer_name, "java") then
		vim.fn.feedkeys('javac '..buffer_name..enter)
		vim.fn.feedkeys('clear'..enter)
 		local bytecode = buffer_name:gsub("%.java$", " ")
		vim.fn.feedkeys('java '..bytecode)	
    elseif string.find(buffer_name, "py") then
		vim.fn.feedkeys('python3 '..buffer_name..enter)
    end
end})
function run_file()
	execute:toggle()
end

---Run script for executing the file
vim.api.nvim_set_keymap("n", "<leader>r", "<cmd>lua run_file()<CR>", opts)
---Command mode when the buffer is a terminal
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)


--Debuggin config----------------------------------------------------------

--local dapui = require('dapui')
--local dap   = require('dap')

--Open the ui for debuggin
--vim.keymap.set("n", "<leader>dg", function() dapui.toggle() end, opts)  
--Set or unset a breakpoint
--vim.keymap.set("n", "<leader>brk", function() dap.toggle_breakpoint() end, opts)
--Continue to next line
--vim.keymap.set("n", "<F5>", function() dap.continue() end, opts)
--Step over
--vim.keymap.set("n", "<F10>", function() dap.step_over() end, opts)
--Step into
--vim.keymap.set("n", "<F11>", function() dap.step_into() end, opts)
--Step out 
--vim.keymap.set("n", "<F12>", function() dap.step_out() end, opts)














