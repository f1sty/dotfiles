vim.pack.add({
  { src = 'https://github.com/stevearc/oil.nvim' },
  { src = "https://github.com/nvim-mini/mini.icons" },
  { src = "https://github.com/nvim-mini/mini.pick" },
  { src = 'https://github.com/rafamadriz/friendly-snippets' },
  { src = 'https://github.com/jayden-chan/base46.nvim' },
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/saghen/blink.cmp' },
  { src = 'https://github.com/saghen/blink.lib' },
  { src = 'https://github.com/vimwiki/vimwiki' },
  { src = "https://github.com/kylechui/nvim-surround", version = "v3.1.8" },
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' },
})

require("mini.pick").setup()
require("oil").setup()
require("nvim-surround").setup()
require("base46").load_theme({ base = "base46", theme = "pastelbeans", transparency = false })
require('nvim-treesitter').setup { install_dir = vim.fn.stdpath('data') .. '/site' }
require('nvim-treesitter').install({ 'lua', 'zig', 'elixir', 'erlang', 'c', 'python', 'rust', 'go', 'vimdoc',
  'typescript' })
require("base46").load_theme({ base = "base46", theme = "pastelbeans", transparency = false })
-- -- go to ~/.local/share/nvim/site/pack/core/opt/blink.cmp and run 'cargo build --release' once
require("blink.cmp").setup({ fuzzy = { implementation = "prefer_rust" }, keymap = { preset = "enter" } })

local capabilities = require("blink.cmp").get_lsp_capabilities()
vim.lsp.enable({ "lua_ls", "clangd", "zls", "elixirls", "nil_ls", "rust_analyzer", "ts_ls" })
vim.lsp.config('elixirls', { cmd = { "/home/f1sty/.local/bin/language_server.sh" }; })
vim.lsp.config("*", { capabilities = capabilities })

vim.g.vimwiki_list = { { path = "/home/f1sty/media/docs/vimwiki", syntax = "markdown", ext = ".md", } }
vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.showmode = false
vim.o.wrap = false
vim.o.swapfile = false
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = "yes"
vim.o.updatetime = 250
vim.o.timeoutlen = 600
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.inccommand = "split"
vim.o.cursorline = true
vim.o.scrolloff = 10
vim.o.confirm = true
vim.o.expandtab = true
vim.opt.complete:append("kspell")
vim.o.laststatus = 3
vim.o.undolevels = 10000
vim.o.spelllang = "en_us"
vim.o.ttyfast = true
vim.o.list = true
vim.o.winborder = "rounded"
vim.o.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '¬' }

local k = vim.keymap
k.set("n", "]b", ":bnext<cr>")
k.set("n", "[b", ":bprev<cr>")
k.set("n", "<leader>F", vim.lsp.buf.format)
k.set("n", "<leader>d", vim.lsp.buf.definition)
k.set("n", "<leader>r", vim.lsp.buf.rename)
k.set("n", "<leader>R", vim.lsp.buf.references)
k.set("n", "<leader>s", vim.lsp.buf.document_symbol)
k.set("n", "<leader>a", vim.lsp.buf.code_action)
k.set("n", "<leader>h", ":lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<cr>")
k.set("n", "<leader>u", vim.pack.update)
k.set("n", "<leader>m", ":update<cr> :make<cr>")
k.set("n", "<leader>f", ":Pick files<cr>")
k.set("n", "<leader>g", ":Pick grep_live<cr>")
k.set("n", "<leader>o", ":Oil --float<cr>")
k.set("n", "<leader>x", ":bd<cr>")
