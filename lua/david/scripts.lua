--Method to run current file in terminal
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

function run_file()
	execute:toggle()
end
vim.api.nvim_set_keymap("n", "<leader>r", "<cmd>lua run_file()<CR>", {noremap = true, silent = true})
 

vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)






