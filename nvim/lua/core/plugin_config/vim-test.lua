vim.cmd [[ let test#strategy = 'neovim' ]]
vim.cmd [[ let test#python#runner = 'pyunit' ]]

vim.keymap.set('n', '<leader>t', ':TestNearest<CR>')
vim.keymap.set('n', '<leader>T', ':TestFile<CR>')

