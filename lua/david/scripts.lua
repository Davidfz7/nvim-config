--local bufnr = 13

--Get buffer id
--:echo nvim_get_current_buf() 
--This commando is also in the nvim api
--vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, {"Hello", "World"})


--[[vim.api.nvim_create_autocmd("BufWritePost", {
	group = vim.api.nvim_create_augroup("cool",{clear = true}),
	pattern=""
	callback = function()
		print("Save file")
	
	end})]]--





local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({{ hidden = true, close_on_exit = false},
on_open = function(term)
	languages = {".py", ".lua", ".js", ".java"} -- Agrega tus extensiones aquí      
	local enter = vim.api.nvim_replace_termcodes("<CR>", true, true,true )
        local cmd = ""	
	local ref = 0
	local previous_buffer = vim.fn.bufnr('#')
	local bufname = vim.fn.bufname(previous_buffer)
	
	vim.fn.feedkeys('clear'..enter)	
        for i = 1, #languages do
 	    if string.find(bufname, "%b"..languages[i]) then 
               local file_path = vim.fn.fnamemodify(bufname, ':h')
               local file_name = vim.fn.fnamemodify(bufname, ':t')
	       if ext == "py" then  
		 vim.fn.feedkeys("python3 "..bufname.. enter)
		break
	     elseif ext == "lua"then
		 vim.fn.feedkeys("lua "..bufname.. enter)
	     elseif ext == "js"then	     
		 vim.fn.feedkeys("im a js file")
	     elseif ext == "java"then
		   local exist = false
		
		   vim.fn.feedkeys("cd "..file_path..enter)
		   vim.fn.feedkeys("clear"..enter)
		   vim.fn.feedkeys("javac "..file_name..enter)
                   local bytecode_file = string.gsub(file_name, "%.java$", "")
		   local bytecode_path = string.gsub(bufname, "%.java", "%.class")   
		   for i = 1, 10 do
		   	vim.fn.feedkeys("sleep 1"..enter)
			local file = io.open(bytecode_path,"r")
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
		end
		else 
		vim.fn.feedkeys("Language no recognized?")        
    end
    end	
end
end})
function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>r", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
 

vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)

vim.keymap.set('n', '<leader>aver', function()
  vim.cmd('below split')
  vim.cmd('terminal')
  vim.feedkeys(0, 'a')
   local enter = vim.api.nvim_replace_termcodes("<CR>", true, true, true)
   vim.fn.feedkeys('clear' .. enter)
   vim.fn.feedkeys('echo hello world' .. enter)
end)





