vim.lsp.start({
  name = 'swift-lsp',
  cmd = {'sourcekit-lsp'},
  root_dir = vim.fs.dirname(vim.fs.find({ 'Package.swift' }, { upward = true })[1]),
})
