vim9script

g:mapleader = ' '
nnoremap <leader>s :set spell!<cr>
nnoremap <leader>ca :LspCodeAction<cr>
nnoremap <leader>cl :LspCodeLens<cr>
nnoremap <leader>cd :LspDiag current<cr>
nnoremap <leader>cn :LspDiag next<cr>
nnoremap <leader>cp :LspDiag prev<cr>
nnoremap <leader>cr :LspShowReferences<cr>
nnoremap <leader>gd :LspGotoDefinition<cr>
nnoremap <leader>gi :LspGotoImpl<cr>
nnoremap <leader>h :LspHover<cr>
nnoremap <leader>f :LspFormat<cr>
nnoremap <C-n> :bn<cr>
nnoremap <C-p> :bp<cr>
inoremap <tab> <C-x><C-o>
