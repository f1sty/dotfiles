vim.lsp.start({
  name = 'erlang_ls',
  cmd = {'erlang_ls'},
  root_dir = vim.fs.dirname(vim.fs.find({'rebar.config', 'src/'}, { upward = true })[1]),
})