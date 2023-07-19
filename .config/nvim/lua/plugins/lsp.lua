local lspconfig = require('lspconfig')

-- lspconfig.elixirls.setup{
--     cmd = { '/usr/lib/elixir-ls/language_server.sh' };
-- }
-- local elixirls = require("elixir.elixirls")
--
-- elixir.setup {
--   -- credo = {
--   --   port = 9000, -- connect via TCP with the given port. mutually exclusive with `cmd`
--   --   cmd = "path/to/credo-language-server", -- path to the executable. mutually exclusive with `port`
--   --   on_attach = function(client, bufnr)
--   --     -- custom keybinds
--   --   end
--   -- },
--   elixirls = {
--     -- specify a repository and branch
--     -- repo = "mhanberg/elixir-ls", -- defaults to elixir-lsp/elixir-ls
--     -- branch = "mh/all-workspace-symbols", -- defaults to nil, just checkouts out the default branch, mutually exclusive with the `tag` option
--     -- tag = "v0.13.0", -- defaults to nil, mutually exclusive with the `branch` option
--
--     -- alternatively, point to an existing elixir-ls installation (optional)
--     -- not currently supported by elixirls, but can be a table if you wish to pass other args `{"path/to/elixirls", "--foo"}`
--     cmd = "/usr/lib/elixir-ls/language_server.sh",
--
--     -- default settings, use the `settings` function to override settings
--     settings = elixirls.settings {
--       dialyzerEnabled = true,
--       fetchDeps = false,
--       enableTestLenses = true,
--       suggestSpecs = true,
--     },
--     on_attach = function(client, bufnr)
--       vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
--       vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
--       vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
--     end
--   }
-- }
require("elixir").setup({
  nextls = {enable = true},
  credo = {enable = true},
  elixirls = {enable = false},
})
lspconfig.rust_analyzer.setup{}
lspconfig.clangd.setup{}
lspconfig.tsserver.setup{}
lspconfig.emmet_ls.setup{}
