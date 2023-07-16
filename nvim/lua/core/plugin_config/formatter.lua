require("formatter").setup {
    filetype = {
        python = {
            function()
                return {
                    exe = "black",
                    args = { "-q", "-" },
                    stdin = true,
                }
            end
        }
    }
}

vim.cmd [[
    augroup FormatAutogroup
        autocmd!
        autocmd BufWritePost * FormatWrite
    augroup END
]]

