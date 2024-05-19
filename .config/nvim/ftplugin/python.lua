vim.lsp.start({
  name = 'pyright-langserver',
  cmd = {'pyright-langserver', '--stdio'},
  root_dir = vim.fs.dirname(vim.fs.find({'__init__.py'}, { upward = true })[1]),
})
