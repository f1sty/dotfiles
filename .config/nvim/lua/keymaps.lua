-- telescope
local builtin = require('telescope.builtin')
local set = vim.keymap.set
set('n', '<leader>f', builtin.find_files, {})
set('n', '<leader>g', builtin.live_grep, {})
set('n', '<leader>b', builtin.buffers, {})
set('n', '<leader>m', builtin.marks, {})
set('n', '<leader>q', builtin.quickfix, {})
set('n', '<leader>r', builtin.registers, {})
set('n', '<leader>j', builtin.jumplist, {})
set('n', '<leader>s', builtin.spell_suggest, {})
set('n', '<leader>h', builtin.help_tags, {})
-- lsp
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    set('n', 'gd', builtin.lsp_definitions, { buffer = args.buf })
    set('n', 'gr', builtin.lsp_references, { buffer = args.buf })
    set('n', 'gI', builtin.lsp_implementations, { buffer = args.buf })
    set('n', 'gD', builtin.diagnostics, { buffer = args.buf })
    set('n', 'gi', builtin.lsp_incoming_calls, { buffer = args.buf })
    set('n', 'go', builtin.lsp_outgoing_calls, { buffer = args.buf })
    set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
    set('n', 'gF', vim.lsp.buf.format, { buffer = args.buf })
    set('n', 'ga', vim.lsp.buf.code_action, { buffer = args.buf })
    set('n', 'gR', vim.lsp.buf.rename, { buffer = args.buf })
    set('n', 'gs', vim.lsp.buf.signature_help, { buffer = args.buf })
  end,
})
-- misc
set('n', '<leader>ts', '<cmd>set spell!<cr>', {})
set('n', '<leader>tg', '<cmd>Git<cr>', {})
-- buffer navigation
set('n', ']b', '<cmd>bn<cr>', {})
set('n', '[b', '<cmd>bp<cr>', {})
