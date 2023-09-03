vim.lsp.start({
  name = 'elixir-ls',
  cmd = {'language_server.sh'},
  root_dir = vim.fs.dirname(vim.fs.find({ 'mix.exs' }, { upward = true })[1]),
})
