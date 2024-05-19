vim.lsp.start({
  name = 'jdtls',
  cmd = {'jdtls'},
  root_dir = vim.fs.dirname(vim.fs.find({'pom.xml', 'settings.gradle'}, { upward = true })[1]),
})
