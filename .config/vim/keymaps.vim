vim9script

# g:mapleader = ' '
nnoremap <leader>s :set spell!<cr>
nnoremap <leader>g :Git<cr>
# nnoremap <leader>gp :Git push<cr>
# nnoremap <leader>gs :Git pull<cr>

# buffer navigation
nnoremap <leader>] :bn<cr>
nnoremap <leader>[ :bp<cr>

# completion menu
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<tab>"

# fzf.vim mappings
nnoremap <c-p> :Files<cr>
nnoremap <leader>ff :GFiles<cr>
nnoremap <leader>fb :Buffers<cr>
nnoremap <leader>fg :Rg<cr>
nnoremap <leader>fs :Snippets<cr>
nnoremap <leader>fm :Marks<cr>
nnoremap <leader>fj :Jumps<cr>
nnoremap <leader>fh :Helptags<cr>

# make/quickfix mappings
nnoremap <leader>qo :copen<cr>
nnoremap <leader>qc :cclose<cr>
nnoremap ]q :cnext<cr>
nnoremap [q :cprevious<cr>
nnoremap <leader>ms :silent make<cr><c-l>
nnoremap <leader>mm :make<cr>
nnoremap <leader>ma :make all<cr>
nnoremap <leader>mc :make clean<cr>
nnoremap <leader>mp :set makeprg=
nnoremap <leader>mf :set formatprg=
nnoremap <leader>nn :let @+=expand("%")<cr>

# autocompletion
imap <c-a> <Plug>(asyncomplete_force_refresh)
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
