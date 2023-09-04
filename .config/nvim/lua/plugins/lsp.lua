vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
    vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { buffer = args.buf })
    vim.keymap.set('n', '<leader>lr', vim.lsp.buf.references, { buffer = args.buf })
    vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation, { buffer = args.buf })
    vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, { buffer = args.buf })
    vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, { buffer = args.buf })
    vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, { buffer = args.buf })
    vim.keymap.set('n', '<leader>ls', vim.lsp.buf.signature_help, { buffer = args.buf })
  end,
})
