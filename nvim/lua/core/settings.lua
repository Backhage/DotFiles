vim.wo.number = true
vim.wo.relativenumber = true
-- Set up clipboard to be able to yank and paste in other applications.
-- Note: a clipboard handler needs to be installed. For Wayland, apt install wl-clipboard.
vim.opt.clipboard:append { 'unnamedplus' }
-- Turn off lsp logging (can be re-enabled if needed)
vim.lsp.set_log_level("off")
