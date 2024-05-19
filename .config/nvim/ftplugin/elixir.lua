vim.lsp.start({
  name = 'elixir-ls',
  cmd = {'elixir-ls'},
  root_dir = vim.fs.dirname(vim.fs.find({'mix.exs'}, { upward = true })[1]),
})
