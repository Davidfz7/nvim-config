return {
    'mfussenegger/nvim-dap-python',
    requires = {'mfussenegger/nvim-dap', 'rcarriga/nvim-dap-ui'},
     config = function()
        
        local pythondap = require('dap-python')
        pythondap.setup('~/.virtualenvs/debugpy/bin/python')
        table.insert(require('dap').configurations.python, {
            type = 'python',
            request = 'launch'
        }) 
     end

}
