local Terminal  = require('toggleterm.terminal').Terminal
local extension_commands = {
   py  = "python3",
   lua =  "lua",
   js  =  "js file",
   java = "java"
}
vim.fn.feedkeys("Hola mundo")
local lazygit = Terminal:new({{ hidden = true, close_on_exit = false},
on_open = function(term)
	local enter = vim.api.nvim_replace_termcodes("<CR>", true, true,true )
	local bufname = vim.fn.bufname(vim.fn.bufnr('#')) 
	local extension_commands = {
		py   = "python3",
		lua  = "lua",
		js   = "js fiel",
		java = {"javac", "java"}
	}
	local newBUffer = vim.fn.expand('#:p')
	vim.fn.feedkeys(newBUffer)	
        
 	    --[[if string.find(bufname, "%b"..languages[i]) then 
               local file_path = vim.fn.fnamemodify(bufname, ':h')
               local file_name = vim.fn.fnamemodify(bufname, ':t')
	       if string.find(file_name, "py") then  
		 vim.fn.feedkeys("python3 "..bufname.. enter)
		break
	     elseif string.find(file_name, "lua") then
		 vim.fn.feedkeys("lua "..bufname.. enter)
	     elseif ext == "js"then	     
		 vim.fn.feedkeys("im a js file")
	     elseif string.find(file_name,"java") then
		   exist = false	
		   vim.fn.feedkeys("cd "..file_path..enter)
		   vim.fn.feedkeys("clear"..enter)
		   vim.fn.feedkeys("javac "..file_name..enter)
		   vim.fn.feedkeys("clear"..enter)
		   averALgo = vim.fn.bufname(0)
		   vim.fn.feedkeys(file_path)
                   bytecode_file = string.gsub(file_name, "%.java$", "")
		   bytecode_path = string.gsub(bufname, "%.java", "%.class")   
		   for i = 1, 10 do
		   	vim.fn.feedkeys("sleep 1"..enter)
			vim.fn.feedkeys("echo ".."'"..bytecode_path.."'"..enter)
			file = io.open(bytecode_path,"r")
			if file then 
				io.close(file)
				exist = true
				break
			end	
		    end
		    if exist == true then
			vim.fn.feedkeys("java "..bytecode_file..enter)		   
			else
			vim.fn.feedkeys("Couldnt find the .class file to execute")
		end]]--
	      
    end
})

function _lazygit_toggle()
	lazygit:toggle()
end

--[[local lazygit = Terminal:new({
  {
    hidden = true,
    close_on_exit = false
  },
  on_open = function(term)
    local enter = vim.api.nvim_replace_termcodes("<CR>", true, true, true)
    local bufname = vim.fn.bufname(vim.fn.bufnr('#'))
    local ext = vim.fn.expand('%:e')

    vim.fn.feedkeys('clear' .. enter)

    local command = extension_commands[ext]
    if command then
      vim.fn.feedkeys(command .. ' ' .. bufname .. enter)
    else
      vim.fn.feedkeys("Language not recognized")
    end
  end
})



function aa()
  lazygit:toggle()
end]]--

vim.api.nvim_set_keymap("n", "<leader>r", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
 

vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)






