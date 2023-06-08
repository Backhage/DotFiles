local dap, dapui, dappython = require("dap"), require("dapui"), require("dap-python")

dapui.setup()

local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
dappython.setup(mason_path .. "packages/debugpy/venv/bin/python3")

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
