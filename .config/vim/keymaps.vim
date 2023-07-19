vim9script

g:mapleader = ' '
nnoremap <leader>s :set spell!<cr>

# lsp keymaps
nnoremap <leader>ca :LspCodeAction<cr>
nnoremap <leader>cl :LspCodeLens<cr>
nnoremap <leader>cd :LspDiag current<cr>
nnoremap <leader>cn :LspDiag next<cr>
nnoremap <leader>cp :LspDiag prev<cr>
nnoremap <leader>cr :LspShowReferences<cr>
nnoremap <leader>cf :LspFormat<cr>
nnoremap <leader>gd :LspGotoDefinition<cr>
nnoremap <leader>gi :LspGotoImpl<cr>
nnoremap <leader>h :LspHover<cr>

# buffer navigation
nnoremap <C-n> :bn<cr>
nnoremap <C-p> :bp<cr>

# completion menu
inoremap <expr><tab> pumvisible() ? "\<C-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<C-p>" : "\<tab>"

# fzf.vim mappings
noremap <c-p> :Files<cr>
noremap <leader>ff :GFiles<cr>
noremap <leader>fb :Buffers<cr>
noremap <leader>fg :Rg<cr>
noremap <leader>fs :Snippets<cr>
