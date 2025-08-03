local set = vim.keymap.set
set("n", "<space>", "<Nop>", { silent = true })
vim.g.mapleader = " "
-- vim.o.breakat = 120
-- vim.o.nobackup = true
-- vim.o.nocompatible = true
-- vim.o.noswapfile = true
-- vim.o.nowritebackup = true
-- vim.o.t_Co = 256
-- vim.opt.completeopt = { 'menu', 'popup' }
-- vim.cmd.colorscheme('retrobox')
vim.diagnostic.config({ virtual_text = true, virtual_lines = false })
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.vimwiki_list = { { path = '/home/f1sty/media/docs/vimwiki', syntax = 'markdown', ext = '.md', } }
vim.opt.autoindent = true
vim.opt.autoread = true
vim.opt.background = 'dark'
vim.opt.cursorline = true
vim.opt.encoding = 'utf-8'
vim.opt.expandtab = true
vim.opt.fileencoding = 'utf-8'
vim.opt.fileformat = 'unix'
vim.opt.hidden = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.laststatus = 2
vim.opt.linebreak = true
vim.opt.listchars = 'tab:^ ,nbsp:¬,extends:»,precedes:«,trail:•'
vim.opt.modifiable = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.shiftwidth = 2
vim.opt.showmatch = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.softtabstop = 2
vim.opt.spelllang = 'en_us'
vim.opt.statusline = '%-F%-M %-y %-q%=%l:%v [0x%B] %p%%'
vim.opt.termguicolors = true
vim.opt.title = true
vim.opt.ttyfast = true
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.updatetime = 300
vim.opt.wildignore = '.hg,.svn,*~,*.png,*.jpg,*.gif,*.min.js,*.swp,*.o,vendor,dist,_site'
vim.opt.wildmenu = true
vim.opt.wildmode = 'list:longest'
vim.opt.complete:append('kspell')
vim.opt.formatoptions:append('ojn')
vim.opt.shortmess:append('c')

-- hot keys
set('n', 'j', 'gj', {})
set('n', 'k', 'gk', {})
set('n', '<leader>ts', '<cmd>set spell!<cr>', {})
set('n', '<leader>tg', '<cmd>Git<cr>', {})
set('n', ']b', '<cmd>bn<cr>', {})
set('n', '[b', '<cmd>bp<cr>', {})
set('n', '<leader><leader>', '<c-^>')
set('n', '<up>', '<nop>')
set('n', '<down>', '<nop>')
set('i', '<up>', '<nop>')
set('i', '<down>', '<nop>')
set('i', '<left>', '<nop>')
set('i', '<right>', '<nop>')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
local plugins = {
  {
    "wincent/base16-nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme gruvbox-dark-hard]])
      vim.o.background = 'dark'
      local bools = vim.api.nvim_get_hl(0, { name = 'Boolean' })
      vim.api.nvim_set_hl(0, 'Comment', bools)
      local marked = vim.api.nvim_get_hl(0, { name = 'PMenu' })
      vim.api.nvim_set_hl(0, 'LspSignatureActiveParameter', { fg = marked.fg, bg = marked.bg, ctermfg = marked.ctermfg, ctermbg = marked.ctermbg, bold = true })
    end
  },
  {
    'itchyny/lightline.vim',
    lazy = false, -- also load at start since it's UI
    config = function()
      -- no need to also show mode in cmd line when we have bar
      vim.o.showmode = false
      vim.g.lightline = {
        active = {
          left = {
            { 'mode', 'paste' },
            { 'readonly', 'filename', 'modified' }
          },
          right = {
            { 'lineinfo' },
            { 'percent' },
            { 'fileencoding', 'filetype' }
          },
        },
        component_function = {
          filename = 'LightlineFilename'
        },
      }
      function LightlineFilenameInLua(opts)
        if vim.fn.expand('%:t') == '' then
          return '[No Name]'
        else
          return vim.fn.getreg('%')
        end
      end
      vim.api.nvim_exec(
        [[
        function! g:LightlineFilename()
        return v:lua.LightlineFilenameInLua()
        endfunction
        ]],
        true
      )
    end
  },
  { 'nvim-telescope/telescope.nvim' },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'FelipeLema/cmp-async-path' },
  { 'hrsh7th/cmp-cmdline' },
  { 'hrsh7th/nvim-cmp' },
  { 'dcampos/nvim-snippy' },
  { 'dcampos/cmp-snippy' },
  { 'honza/vim-snippets' },
  { 'vimwiki/vimwiki' },
  { 'godlygeek/tabular' },
  { 'tpope/vim-fugitive' },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function() require("nvim-surround").setup({ }) end
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts)
      require "lsp_signature".setup({
        doc_lines = 0,
        handler_opts = {
          border = "none"
        },
      })
    end
  }
}
local opts = {}

require('lazy').setup(plugins, opts)
require('nvim-treesitter.configs').setup({
  ensure_installed = { "c", "lua", "erlang", "elixir", "python", "rust", "typescript", "java", "asm", "go" },
  sync_install = false,
  auto_install = true,
  ignore_install = { "javascript" },
  highlight = {
    enable = true,
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,
    additional_vim_regex_highlighting = false,
  },
})
local cmp = require('cmp')
cmp.setup({
  snippet = {
    expand = function(args)
      require('snippy').expand_snippet(args.body)
    end
  },
  sources = {
    { name = 'snippy' },
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'async_path' },
  },
  experimental = {
    ghost_text = true,
  },
  mapping = cmp.mapping.preset.insert({
    ['<c-j>'] = cmp.mapping.scroll_docs(-4),
    ['<c-k>'] = cmp.mapping.scroll_docs(4),
    ['<c-a>'] = cmp.mapping.complete(),
    ['<c-e>'] = cmp.mapping.abort(),
    ['<cr>'] = cmp.mapping.confirm({ select = true }),
  }),
})
require('snippy').setup({
  mappings = {
    is = {
      ['<c-s>'] = 'expand',
      ['<c-l>'] = 'next',
      ['<c-h>'] = 'previous',
    },
    nx = {
      ['<leader>x'] = 'cut_text',
    },
  },
})
-- telescope
local builtin = require('telescope.builtin')
set('n', '<leader>f', builtin.find_files, {})
set('n', '<leader>g', builtin.live_grep, {})
set('n', '<leader>;', builtin.buffers, {})
set('n', '<leader>m', builtin.marks, {})
set('n', '<leader>q', builtin.quickfix, {})
set('n', '<leader>r', builtin.registers, {})
set('n', '<leader>j', builtin.jumplist, {})
set('n', '<leader>s', builtin.spell_suggest, {})
set('n', '<leader>h', builtin.help_tags, {})
-- lsp
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    set('n', 'gd', builtin.lsp_definitions, { buffer = args.buf })
    set('n', 'gr', builtin.lsp_references, { buffer = args.buf })
    set('n', 'gI', builtin.lsp_implementations, { buffer = args.buf })
    set('n', 'gD', builtin.diagnostics, { buffer = args.buf })
    set('n', 'gi', builtin.lsp_incoming_calls, { buffer = args.buf })
    set('n', 'go', builtin.lsp_outgoing_calls, { buffer = args.buf })
    set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
    set('n', 'gF', vim.lsp.buf.format, { buffer = args.buf })
    set('n', 'ga', vim.lsp.buf.code_action, { buffer = args.buf })
    set('n', 'gR', vim.lsp.buf.rename, { buffer = args.buf })
    set('n', 'gs', vim.lsp.buf.signature_help, { buffer = args.buf })
  end,
})
