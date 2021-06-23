set nocompatible              " required

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin()
    " Plug 'MarcWeber/vim-addon-mw-utils'
    " Plug 'Shougo/deoplete.nvim'
    " Plug 'garbas/vim-snipmate'
    " Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Plug 'roxma/nvim-yarp'
    " Plug 'roxma/vim-hug-neovim-rpc'
    " Plug 'scrooloose/syntastic'
    " Plug 'tomtom/tlib_vim'
    " Plug 'tpope/vim-fugitive'
    Plug 'SirVer/ultisnips'
    Plug 'altercation/vim-colors-solarized'
    Plug 'ap/vim-css-color'
    Plug 'chrisbra/unicode.vim'
    Plug 'elixir-editors/vim-elixir'
    Plug 'fatih/vim-go'
    Plug 'honza/vim-snippets'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'majutsushi/tagbar'
    " Plug 'mhinz/vim-mix-format'
    Plug 'morhetz/gruvbox'
    Plug 'nvie/vim-flake8'
    Plug 'pangloss/vim-javascript'
    Plug 'rust-lang/rust.vim'
    Plug 'sjl/badwolf'
    Plug 'slashmili/alchemist.vim'
    Plug 'stevearc/vim-arduino'
    Plug 'tmhedberg/SimpylFold'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()

" doesn't needed, already run by plug
" filetype plugin indent on
" syntax enable
" set statusline+=%{SyntasticStatuslineFlag()}
set list                                " show special characters
set listchars=tab:»»,trail:·,nbsp:~,eol:↵,extends:❯,precedes:❮
set autoindent
set autoread
set background=dark
set backspace=2                         " full backspacing capabilities (indent,eol,start)
set clipboard+=unnamed                  " yank and copy to X clipboard
set colorcolumn=98
set complete+=kspell
set cursorline                          " track position
set encoding=utf-8                      " UTF-8 encoding for all new files
set fileformat=unix
set fillchars=vert:┃
set foldenable
set foldlevelstart=3
set foldlevelstart=99     " no folds closed on open
set foldmethod=indent
set foldmethod=indent     " collapse code using markers
set foldnestmax=5
set formatoptions+=j
set formatoptions+=n
set hidden                              " allow switch between buffers w/o saving changes
set hlsearch                            " highlight all search results
set ignorecase                          " case-insensitive search
set incsearch                           " increment search
set lazyredraw
set linebreak
set nobackup
set nojoinspaces
set noshowmode
set nottimeout
set nowrap
set nowritebackup
set number
set ruler
set scrolloff=9
set shell=/bin/zsh
set shiftwidth=4 tabstop=4 expandtab
set shortmess+=c
set showcmd
set showmatch                           " matching brackets & the like
set smartcase                           " uppercase causes case-sensitive search
set softtabstop=4
set splitbelow                          " place new files below the current
set statusline+=%#warningmsg#
set statusline+=%*
set t_Co=256
set textwidth=98
set timeout
set timeoutlen=300
set title
set ttyfast                             " don't lag…
set updatetime=300
set wildmenu                            " enhanced tab-completion shows all matching cmds in a popup menu
set wildmode=list:full          " full completion options
set wrap                              " don't wrap lines
set wrap mouse=a
setlocal spelllang=en_us

if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif


" let &t_SI = "\<Esc>[6 q"
" let &t_SR = "\<Esc>[4 q"
" let &t_EI = "\<Esc>[2 q"
let mapleader="\\"
let python_highlight_all=1
let g:solarized_termcolors=256
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_enable_elixir_checker = 1
" let g:syntastic_python_checkers = ["flake8"]
" let g:syntastic_asm_checkers = ["nasm"]
" let g:syntastic_error_symbol = '⨯'
" let g:syntastic_style_error_symbol = '⁉️'
" let g:syntastic_warning_symbol = '↯'
" let g:syntastic_style_warning_symbol = '¡'
" let g:syntastic_nasm_nasm_lint_args = '-felf64'
" let g:ycm_autoclose_preview_window_after_completion=1
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
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

nmap <leader>l :bn<cr>
nmap <leader>h :bp<cr>
nmap <leader>q :bp <bar> bd #<cr>
" map <C-\> <C-]>:tab ball<cr>gT
" nmap <leader>n :tabnew<cr>
" nmap <leader>q :tabclose<cr>
nmap <leader>r :Rg 
nmap <leader>f :Files<cr>
nmap <leader>u :UnicodeSearch! 
nmap <leader>t :terminal<cr>
nmap // :BLines<cr>
" map <leader>k :SyntasticToggleMode<CR>
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
" nnoremap ; :
" nnoremap : ;

autocmd BufNewFile * silent! 0r $HOME/.vim/templates/%:e.tpl
autocmd BufNewFile,BufRead *.ino let g:airline_section_x='%{MyStatusLine()}'
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufWritePost *.exs,*.ex silent :!mix format %
iabbrev ssig --<cr>Yurii Skrynnykov<cr>truef1s7@gmail.com
hi Normal guibg=NONE ctermbg=NONE

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
