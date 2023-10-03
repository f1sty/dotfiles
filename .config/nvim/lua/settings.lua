local o = vim.o

vim.cmd.colorscheme('habamax')
-- colorscheme koehler
-- colorscheme desert
-- colorscheme evening
-- colorscheme habamax
-- colorscheme pablo
-- colorscheme retrobox
-- colorscheme zaibatsu

-- usability settings
o.compatible = false
o.termguicolors = true
o.showmatch = true
o.incsearch = true
o.ttyfast = true
o.ignorecase = true
o.smartcase = true
o.number = true
o.relativenumber = true
o.cursorline = true
o.title = true
o.autoread = true
o.hidden = true
o.wildmenu = true
o.wildoptions = 'pum'
o.updatetime = 300
o.complete = 'kspell'
o.signcolumn = 'number'
o.shortmess = 'c'
o.scrolloff = 10
o.spelllang = 'en_us'
-- o.completeopt = 'menu,menuone'
o.laststatus = 2

-- formatting settings
o.expandtab = true
o.autoindent = true
o.smartindent = true
o.wrap = true
o.linebreak = true
o.textwidth = 98
o.formatoptions = 'tjn'
o.shiftwidth = 2
o.softtabstop = 2

-- turn off backup and swap, enable persistent undo
o.backup = false
o.writebackup = false
o.swapfile = false
o.undofile = true
o.undolevels = 10000

-- encoding settings
o.encoding = 'utf-8'
-- o.fileencoding = 'utf-8'
o.fileformat = 'unix'
vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- make lsp signs nicer
-- highlight LspErrorText ctermbg=NONE guibg=NONE ctermfg=red guifg=red
-- highlight LspHintText ctermbg=NONE guibg=NONE ctermfg=lightblue guifg=lightblue
-- highlight LspWarningText ctermbg=NONE guibg=NONE ctermfg=yellow guifg=yellow
-- highlight LspInformationText ctermbg=NONE guibg=NONE ctermfg=green guifg=green
-- highlight LspInlayHintsType ctermbg=NONE guibg=NONE ctermfg=darkgreen guifg=darkgreen
-- highlight LspInlayHintsParameter ctermbg=NONE guibg=NONE ctermfg=lightblue guifg=lightblue
-- highlight lspReference ctermfg=blue guifg=blue ctermbg=NONE guibg=NONE
