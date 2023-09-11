vim.lsp.start({
  name = 'js-lsp',
  cmd = {'typescript-language-server', '--stdio'},
  root_dir = vim.fs.dirname(vim.fs.find({'app.js', 'package.json', 'script.js'}, { upward = true })[1]),
})
