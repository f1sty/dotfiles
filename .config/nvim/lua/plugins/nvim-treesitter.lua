local configs = require('nvim-treesitter.configs')

configs.setup({
  ensure_installed = { 'bash', 'c', 'lua', 'vim', 'vimdoc', 'rust', 'erlang', 'elixir', 'heex', 'javascript', 'html', 'typescript' },
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },  
})
