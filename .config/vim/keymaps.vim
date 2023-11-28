vim9script

# g:mapleader = ' '
nnoremap <leader>s :set spell!<cr>
nnoremap <leader>g :Git<cr>
# nnoremap <leader>gp :Git push<cr>
# nnoremap <leader>gs :Git pull<cr>

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
nnoremap <c-p> :Files<cr>
nnoremap <leader>ff :GFiles<cr>
nnoremap <leader>fb :Buffers<cr>
nnoremap <leader>fg :Rg<cr>
nnoremap <leader>fs :Snippets<cr>
nnoremap <leader>fm :Marks<cr>
nnoremap <leader>fj :Jumps<cr>
nnoremap <leader>fh :Helptags<cr>

# make/quickfix mappings
nnoremap <leader>ql :copen<cr>
nnoremap <leader>qx :cclose<cr>
nnoremap ]q :cnext<cr>
nnoremap [q :cprevious<cr>
nnoremap <leader>ms :silent make<cr><c-l>
nnoremap <leader>mm :make<cr>
nnoremap <leader>ma :make all<cr>
nnoremap <leader>mc :make clean<cr>
nnoremap <leader>mp :set makeprg=
nnoremap <leader>mf :set formatprg=
nnoremap <leader>ff :let @+=expand("%")<cr>

# vim.api.nvim_create_autocmd('LspAttach', {
#   callback = function(args)
#     set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
#     set('n', '<leader>lf', vim.lsp.buf.format, { buffer = args.buf })
#     set('n', '<leader>lR', vim.lsp.buf.references, { buffer = args.buf })
#     set('n', '<leader>li', vim.lsp.buf.implementation, { buffer = args.buf })
#     set('n', '<leader>ld', vim.lsp.buf.definition, { buffer = args.buf })
#     set('n', '<leader>la', vim.lsp.buf.code_action, { buffer = args.buf })
#     set('n', '<leader>lr', vim.lsp.buf.rename, { buffer = args.buf })
#     set('n', '<leader>ls', vim.lsp.buf.signature_help, { buffer = args.buf })
#   end,
# })
