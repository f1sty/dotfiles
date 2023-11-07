local set = vim.keymap.set

set('n', '<leader>s', '<cmd>set spell!<cr>')
set('n', '<leader>g', '<cmd>Neogit cwd=%:p:h<cr>')

-- buffer navigation
set('n', '<c-f>', '<cmd>bn<cr>')
set('n', '<c-b>', '<cmd>bp<cr>')

-- telescope.nvim mappings
local ts = require('telescope.builtin')
set('n', '<c-p>', ts.find_files, {})
set('n', '<leader>ff', ts.git_files, {})
set('n', '<leader>fb', ts.buffers, {})
set('n', '<leader>fg', ts.live_grep, {})
set('n', '<leader>fs', ts.grep_string, {})
set('n', '<leader>fc', ts.git_commits, {})
set('n', '<leader>fj', ts.jumplist, {})
set('n', '<leader>fh', ts.help_tags, {})
set('n', '<leader>fm', ts.man_pages, {})
set('n', '<leader>ft', ts.treesitter, {})

-- make/quickfix mappings
set('n', '<leader>cc', '<cmd>cc<cr>')
set('n', '<leader>cn', '<cmd>cn<cr>')
set('n', '<leader>cp', '<cmd>cp<cr>')
set('n', '<leader>mm', '<cmd>make<cr>')
set('n', '<leader>ma', '<cmd>make all<cr>')
set('n', '<leader>mi', '<cmd>make install<cr>')
set('n', '<leader>mc', '<cmd>make clean<cr>')
set('n', '<leader>mp', '<cmd>set makeprg=')
set('n', '<leader>mf', '<cmd>set formatprg=')
set('n', '<leader>n', '<cmd>let @+ = expand("%")<cr>')

-- lsp mappings
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
    set('n', '<leader>lf', vim.lsp.buf.format, { buffer = args.buf })
    set('n', '<leader>lR', vim.lsp.buf.references, { buffer = args.buf })
    set('n', '<leader>li', vim.lsp.buf.implementation, { buffer = args.buf })
    set('n', '<leader>ld', vim.lsp.buf.definition, { buffer = args.buf })
    set('n', '<leader>la', vim.lsp.buf.code_action, { buffer = args.buf })
    set('n', '<leader>lr', vim.lsp.buf.rename, { buffer = args.buf })
    set('n', '<leader>ls', vim.lsp.buf.signature_help, { buffer = args.buf })
  end,
})
