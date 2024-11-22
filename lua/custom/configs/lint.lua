require('lint').linters_by_ft = {
    javascript = {'exlint'},
    typescript = {'eslint'},
}

vim.api.nvim_create_autocmd({"BufWritePost"}, {
    callback = function ()
        require("lint").try_lint()
    end,
})

