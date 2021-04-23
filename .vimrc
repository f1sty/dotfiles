set nocompatible              " required

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin()
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    " Plug 'tpope/vim-fugitive'
    Plug 'SirVer/ultisnips'
    " Plug 'MarcWeber/vim-addon-mw-utils'
    " Plug 'tomtom/tlib_vim'
    " Plug 'garbas/vim-snipmate'
    Plug 'honza/vim-snippets'
    Plug 'elixir-editors/vim-elixir'
    Plug 'mhinz/vim-mix-format'
    Plug 'slashmili/alchemist.vim'
    Plug 'rust-lang/rust.vim'
    Plug 'scrooloose/syntastic'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'pangloss/vim-javascript'
    Plug 'nvie/vim-flake8'
    Plug 'tmhedberg/SimpylFold'
    Plug 'majutsushi/tagbar'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'sjl/badwolf'
    Plug 'altercation/vim-colors-solarized'
    Plug 'morhetz/gruvbox'
    " Plug 'Shougo/deoplete.nvim'
    " Plug 'roxma/nvim-yarp'
    " Plug 'roxma/vim-hug-neovim-rpc'
    Plug 'stevearc/vim-arduino'
    Plug 'fatih/vim-go'
    Plug 'chrisbra/unicode.vim'
    Plug 'ap/vim-css-color'
    " Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
call plug#end()

" doesn't needed, already run by plug
" filetype plugin indent on
" syntax enable
set shell=/bin/zsh
set title
set ruler
set number
set scrolloff=3
set ttyfast                             " don't lag…
set cursorline                          " track position
set wrap                              " don't wrap lines
set splitbelow                          " place new files below the current
set showmatch                           " matching brackets & the like
set clipboard+=unnamed                  " yank and copy to X clipboard
set encoding=utf-8                      " UTF-8 encoding for all new files
set backspace=2                         " full backspacing capabilities (indent,eol,start)
set wildmenu                            " enhanced tab-completion shows all matching cmds in a popup menu
set wildmode=list:full          " full completion options
set shiftwidth=4 tabstop=4 expandtab
set softtabstop=4
set noshowmode
set showcmd
set autoread
set linebreak
set nowrap
set timeout
set nottimeout
set timeoutlen=300
" set listchars=tab:»»,trail:·,nbsp:~,eol:↵,extends:❯,precedes:❮
" set list                                " show special characters
set fillchars=vert:┃
set lazyredraw
set formatoptions+=j
set formatoptions+=n
set nojoinspaces
set colorcolumn=98
set textwidth=98
set autoindent
set fileformat=unix
set wrap mouse=a
set hidden                              " allow switch between buffers w/o saving changes
set t_Co=256
set hlsearch                            " highlight all search results
set incsearch                           " increment search
set ignorecase                          " case-insensitive search
set smartcase                           " uppercase causes case-sensitive search
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set foldlevelstart=99     " no folds closed on open
set foldmethod=indent     " collapse code using markers
set background=dark
set foldenable
set foldnestmax=5
set foldlevelstart=3
set foldmethod=indent
setlocal spelllang=en_us
set complete+=kspell
set scrolloff=9

let mapleader="\\"
let python_highlight_all=1
let g:solarized_termcolors=256
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_elixir_checker = 1
let g:syntastic_python_checkers = ["flake8"]
let g:syntastic_asm_checkers = ["nasm"]
let g:syntastic_error_symbol = '⨯'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '↯'
let g:syntastic_style_warning_symbol = '¡'
" let g:syntastic_nasm_nasm_lint_args = '-felf64'
" let g:ycm_autoclose_preview_window_after_completion=1
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
" let g:base16colorspace = 256
let g:UltiSnipsListSnippets = "<leader>s"
" let g:UltiSnipsExpandTrigger = "<leader>s"
" let g:UltiSnipsJumpForwardTrigger = "<c-j>"
" let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
" let g:UltiSnipsEditSplit = "vertical"
" let g:deoplete#enable_at_startup = 1
" let g:user_emmet_leader_key = '<C-Z>'
let g:arduino_dir = "/usr/share/arduino"
let g:arduino_home_dir = $HOME . "/.arduino15"
let g:arduino_board = 'arduino:avr:uno'
let g:rustfmt_autosave = 1
" let $BASH_ENV = "~/.bashrc"
let g:snipMate = { 'snippet_version' : 1 }

colorscheme gruvbox

nmap <leader>l :bn<CR>
nmap <leader>h :bp<CR>
nmap <leader>q :bp <bar> bd #<CR>
nmap <leader>a :Ag 
nmap <leader>f :Files<cr>
nmap <leader>u :UnicodeSearch! 
nmap // :BLines<cr>
map <M-k> :SyntasticToggleMode<CR>
inoremap <M-space> <Esc>
" imap <expr> <tab> pumvisible() ? '<esc>a<Plug>snipMateNextOrTrigger' : '<Plug>snipMateNextOrTrigger'
" smap <tab> <Plug>snipMateNextOrTrigger
" nnoremap <leader>tw gqip
nnoremap <space> za
vnoremap <space> za
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap <leader>ev :edit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <buffer> <leader>m :silent make <bar> redraw!<CR>

autocmd BufNewFile * silent! 0r $HOME/.vim/templates/%:e.tpl
autocmd BufNewFile,BufRead *.ino let g:airline_section_x='%{MyStatusLine()}'
autocmd BufRead,BufNewFile *.md setlocal spell

iabbrev ssig --<cr>Yurii Skrynnykov<cr>truef1s7@gmail.com
hi Normal guibg=NONE ctermbg=NONE
