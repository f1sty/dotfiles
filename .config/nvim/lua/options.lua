vim.cmd.colorscheme 'monokai_ristretto'

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileformat = 'unix'
vim.opt.fileencoding = 'utf-8'

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.clipboard:append { 'unnamedplus' }
vim.opt.winblend = 0
vim.opt.pumblend = 5
vim.opt.autoindent = true
vim.opt.title = true
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.smarttab = true
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. '/.cache/nvim/undodir'
vim.opt.undolevels = 10000
vim.opt.backspace = 'start,eol,indent'
-- vim.opt.listchars = 'tab:»»,trail:·,nbsp:~,eol:↵,extends:❯,precedes:❮'
vim.opt.autoread = true
vim.opt.background = 'dark'
vim.opt.textwidth = 98
vim.opt.complete:append { 'kspell' }
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300) 
vim.opt.cursorline = true
vim.opt.colorcolumn = '+1'
vim.opt.termguicolors = true
vim.opt.formatoptions:append { 'j' }
vim.opt.formatoptions:append { 'n' }
vim.opt.formatoptions:append { 'r' }
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.linebreak = true
vim.opt.writebackup = false
vim.opt.ttimeout = false
vim.opt.wrap = false
vim.opt.scrolloff = 999
vim.opt.shell = '/bin/zsh'
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.showmatch = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.timeout = true
vim.opt.timeoutlen = 300
vim.opt.ttyfast = true
vim.opt.updatetime = 300
vim.opt.mouse = 'a'
vim.opt.signcolumn = 'yes'
vim.opt.spelllang = 'en_us'

-- vim.wo.foldmethod = 'expr'
-- vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
