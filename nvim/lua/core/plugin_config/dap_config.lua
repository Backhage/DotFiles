local dap, dapui, dapuiwidgets, dappython = require("dap"), require("dapui"), require("dap.ui.widgets"), require("dap-python")

dapui.setup()

-- Python debugging
local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
dappython.setup(mason_path .. "packages/debugpy/venv/bin/python3")
vim.keymap.set('n', '<Leader>pdt', function() dappython.test_method() end)

-- Generic key mappings
vim.keymap.set('n', '<Leader>dc', function() dap.continue() end)
vim.keymap.set('n', '<Leader>dn', function() dap.step_over() end)
vim.keymap.set('n', '<Leader>di', function() dap.step_into() end)
vim.keymap.set('n', '<Leader>do', function() dap.step_out() end)
vim.keymap.set('n', '<Leader>b', function() dap.toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>B', function() dap.set_breakpoint() end)
vim.keymap.set('n', '<Leader>lp', function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<Leader>dr', function() dap.repl.open() end)
vim.keymap.set('n', '<Leader>dl', function() dap.run_last() end)
vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
    require('dap.ui.widgets').hover()
end)
vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
    dapuiwidgets.preview()
end)
vim.keymap.set('n', '<Leader>df', function()
    dapuiwidgets.centered_float(dapuiwidgets.frames)
end)
vim.keymap.set('n', '<Leader>ds', function()
    dapuiwidgets.centered_float(dapuiwidgets.scopes)
end)

-- Listeners for automatically switching between debug layout and back.
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
