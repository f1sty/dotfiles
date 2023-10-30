vim.lsp.start({
  name = 'gopls',
  cmd = {'gopls'},
  root_dir = vim.fs.dirname(vim.fs.find({'main.go', 'src/main.go'}, { upward = true })[1]),
})
vim.o.shiftwidth = 8
