vim.lsp.start({
  name = 'typescript-language-server',
  cmd = {'typescript-language-server', '--stdio'},
  root_dir = vim.fs.dirname(vim.fs.find({'package.json', 'config.js'}, { upward = true })[1]),
})
