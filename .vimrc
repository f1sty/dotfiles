vim9script

# use xdg standard path for config files
set rtp+=~/.config/vim
set path+=/usr/avr/include

source ~/.config/vim/plugins.vim

colorscheme slate
# colorscheme desert
# colorscheme habamax
# colorscheme pablo
# colorscheme zaibatsu
# colorscheme retrobox
set background=dark

# usability settings
set nocompatible
set termguicolors
set showmatch
set incsearch
set ttyfast
set ignorecase
set smartcase
set number
set relativenumber
set cursorline
set title
set autoread
set hidden
set wildmenu
set t_Co=256
set updatetime=300
set complete+=kspell
set shortmess+=c	                               # make less noise
set scrolloff=10
set spelllang=en_us
set completeopt=menu,popup
# set omnifunc=g:LspOmniFunc
set laststatus=2
set statusline=%-F%-M\ %-y\ %-q%=%l:%v\ [0x%B]\ %p%%

# formatting settings
set expandtab
set autoindent
set smartindent
set linebreak
set breakat=120
# set textwidth=98
set formatoptions+=ojn
set shiftwidth=2
set softtabstop=2

# turn off backup and swap, enable persistent undo
set nobackup
set nowritebackup
set noswapfile
set undofile
set undolevels=10000

# encoding settings
set encoding=utf-8
set fileencoding=utf-8
set fileformat=unix

source ~/.config/vim/keymaps.vim
source ~/.config/vim/lsp.vim

# make lsp signs nicer
# highlight LspErrorText ctermbg=NONE guibg=NONE ctermfg=red guifg=red
# highlight LspHintText ctermbg=NONE guibg=NONE ctermfg=lightblue guifg=lightblue
# highlight LspWarningText ctermbg=NONE guibg=NONE ctermfg=yellow guifg=yellow
# highlight LspInformationText ctermbg=NONE guibg=NONE ctermfg=green guifg=green
# highlight LspInlayHintsType ctermbg=NONE guibg=NONE ctermfg=darkgreen guifg=darkgreen
# highlight LspInlayHintsParameter ctermbg=NONE guibg=NONE ctermfg=lightblue guifg=lightblue
# highlight lspReference ctermfg=blue guifg=blue ctermbg=NONE guibg=NONE
