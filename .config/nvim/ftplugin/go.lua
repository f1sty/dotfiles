vim.lsp.start({
  name = 'go',
  cmd = {'gopls'},
  root_dir = vim.fs.dirname(vim.fs.find({'go.mod'}, { upward = true })[1]),
})
