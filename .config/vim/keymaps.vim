vim9script

g:mapleader = ' '
nnoremap <leader>s :set spell!<cr>
nnoremap <leader>g :Git<cr>

# lsp keymaps
nnoremap <leader>ca :LspCodeAction<cr>
nnoremap <leader>cl :LspCodeLens<cr>
nnoremap <leader>cd :LspDiag current<cr>
nnoremap <leader>cn :LspDiag next<cr>
nnoremap <leader>cp :LspDiag prev<cr>
nnoremap <leader>cs :LspDiagShow<cr>
nnoremap <leader>cr :LspShowReferences<cr>
nnoremap <leader>cf :LspFormat<cr>
nnoremap <leader>d :LspGotoDefinition<cr>
nnoremap <leader>i :LspGotoImpl<cr>
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
