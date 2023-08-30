vim9script

# g:mapleader = ' '
nnoremap <leader>s :set spell!<cr>
nnoremap <leader>gg :Git<cr>
nnoremap <leader>gp :Git push<cr>
nnoremap <leader>gs :Git pull<cr>

# lsp keymaps
nnoremap <leader>la :LspCodeAction<cr>
nnoremap <leader>ll :LspCodeLens<cr>
nnoremap <leader>ld :LspDeclaration<cr>
nnoremap <leader>ln :LspNextDiagnostic<cr>
nnoremap <leader>lp :LspPreviousDiganostic<cr>
nnoremap <leader>lr :LspReferences<cr>
nnoremap <leader>lf :LspDocumentFormat<cr>
nnoremap <leader>d :LspDefinition<cr>
nnoremap <leader>h :LspHover<cr>

# buffer navigation
nnoremap <c-f> :bn<cr>
nnoremap <c-b> :bp<cr>

# completion menu
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<tab>"

# fzf.vim mappings
noremap <c-p> :Files<cr>
noremap <leader>ff :GFiles<cr>
noremap <leader>fb :Buffers<cr>
noremap <leader>fg :Rg<cr>
noremap <leader>fs :Snippets<cr>

# make/quickfix mappings
nnoremap <leader>qq :copen<cr>
nnoremap <leader>qc :cclose<cr>
nnoremap ]q :cnext<cr>
nnoremap [q :cprevious<cr>
nnoremap <leader>m :silent make<cr><c-l>
nnoremap <leader>pm :set makeprg=
nnoremap <leader>pf :set formatprg=
