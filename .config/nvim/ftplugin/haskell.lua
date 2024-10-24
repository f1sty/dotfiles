vim.lsp.start({
  name = 'haskell-language-server',
  cmd = {'haskell-language-server', '--lsp'},
  root_dir = vim.fs.dirname(vim.fs.find('main.hs', { upward = true })[1]),
})
