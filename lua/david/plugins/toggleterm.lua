
return {

 'akinsho/toggleterm.nvim', 
  version = "*", 
  config = function() 
	local term = require("toggleterm")

	term.setup({size = 10, direction = "horizontal"})
	end

}


