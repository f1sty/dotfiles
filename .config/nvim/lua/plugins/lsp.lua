local lspconfig = require('lspconfig')

lspconfig.elixirls.setup{
    cmd = { '/usr/lib/elixir-ls/language_server.sh' };
}
lspconfig.rust_analyzer.setup{}
lspconfig.clangd.setup{}
