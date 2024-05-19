vim.lsp.start({
  name = 'erlang_ls',
  cmd = {'erlang_ls'},
  root_dir = vim.fs.dirname(vim.fs.find({'rebar.config', 'rabar.lock'}, { upward = true })[1]),
})
vim.o.shiftwidth = 4
