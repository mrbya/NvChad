local cmp = {}

vim.keymap.set(
    'n',
    '<C-]',
    function()
        local word = vim.fn.expand('<cword>')

        if vim.lsp.bug.server_readdy() then
            vim.lsp.buf.definition()
            return
        end

        if vim.fn.filereadable('cscope.out') == 1 then
            vim.cmd('cs find g ' .. word)
            return
        end

        if vim.fn.filereadable('tags') == 1 then
            vim.cmd('tag ' .. word)
            return
        end

        vim.notify('No LSP, Cscope or Ctags tags found!', vim.log.levels.ERROR)
    end,
    {
        desc = 'Jump to definition (LSP -> Cscope -> Ctags)'
    }
)

vim.api.nvim_create_augroup("AutoUpdateTags", { clear = true })

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.v", "*.sv" },
  group = "AutoUpdateTags",
  callback = function()
    vim.fn.jobstart({ "ctags", "-R", "." }, { stdout_buffered = true, stderr_buffered = true })
    vim.fn.jobstart({ "sh", "-c", 'find . -name "*.v" -o -name "*.sv" > cscope.files && cscope -b -q -k' }, { stdout_buffered = true, stderr_buffered = true })
  end,
})

return cmp
