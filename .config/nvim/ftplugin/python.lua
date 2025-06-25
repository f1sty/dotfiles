vim.lsp.start({
  name = 'pylsp',
  cmd = {'pylsp'},
  root_dir = vim.fs.dirname(vim.fs.find({'__init__.py'}, { upward = true })[1]),
})
