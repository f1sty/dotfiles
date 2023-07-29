vim9script

g:mapleader = ' '
nnoremap <leader>s :set spell!<cr>
nnoremap <leader>gc :Git<cr>
nnoremap <leader>gp :Git push<cr>
nnoremap <leader>gs :Git pull<cr>

# lsp keymaps
nnoremap <leader>ca :LspCodeAction<cr>
nnoremap <leader>cl :LspCodeLens<cr>
nnoremap <leader>cd :LspDeclaration<cr>
nnoremap <leader>cn :LspNextDiagnostic<cr>
nnoremap <leader>cp :LspPreviousDiganostic<cr>
nnoremap <leader>cr :LspReferences<cr>
nnoremap <leader>cf :LspDocumentFormat<cr>
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
