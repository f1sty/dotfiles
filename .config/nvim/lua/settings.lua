-- color theme
-- vim.cmd.colorscheme('lunaperche')
vim.cmd.colorscheme('retrobox')

-- options
vim.o.background = 'dark'
-- usability settings
-- vim.o.nocompatible = true
vim.o.termguicolors = true
vim.o.showmatch = true
vim.o.incsearch = true
vim.o.ttyfast = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.title = true
vim.o.autoread = true
vim.o.hidden = true
vim.o.wildmenu = true
-- vim.o.t_Co = 256
vim.o.updatetime = 300
vim.opt.complete:append('kspell')
vim.opt.shortmess:append('c')
vim.o.scrolloff = 10
vim.o.spelllang = 'en_us'
-- vim.opt.completeopt = { 'menu', 'popup' }
vim.o.laststatus = 2
vim.o.statusline = '%-F%-M %-y %-q%=%l:%v [0x%B] %p%%'
-- formatting settings
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.linebreak = true
-- vim.o.breakat = 120
vim.opt.formatoptions:append('ojn')
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
-- turn off backup and swap, enable persistent undo
-- vim.o.nobackup = true
-- vim.o.nowritebackup = true
-- vim.o.noswapfile = true
vim.o.undofile = true
vim.o.undolevels = 10000
vim.o.modifiable = true
-- encoding settings
vim.o.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'
vim.o.fileformat = 'unix'

-- global variables
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
