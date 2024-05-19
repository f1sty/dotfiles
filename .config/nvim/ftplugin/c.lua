vim.lsp.start({
  name = 'clangd',
  cmd = {'clangd'},
  root_dir = vim.fs.dirname(vim.fs.find({'Makefile', 'build.ninja', 'main.c'}, { upward = true })[1]),
})
