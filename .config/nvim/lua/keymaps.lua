-- telescope
local builtin = require('telescope.builtin')
local set = vim.keymap.set
set('n', '<leader>ff', builtin.find_files, {})
set('n', '<leader>fg', builtin.live_grep, {})
set('n', '<leader>fb', builtin.buffers, {})
set('n', '<leader>fm', builtin.marks, {})
set('n', '<leader>fq', builtin.quickfix, {})
set('n', '<leader>fr', builtin.registers, {})
set('n', '<leader>fj', builtin.jumplist, {})
set('n', '<leader>fs', builtin.spell_suggest, {})
set('n', '<leader>fh', builtin.help_tags, {})
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
    set('n', 'gff', vim.lsp.buf.format, { buffer = args.buf })
    set('n', 'ga', vim.lsp.buf.code_action, { buffer = args.buf })
    set('n', 'gR', vim.lsp.buf.rename, { buffer = args.buf })
    set('n', 'gs', vim.lsp.buf.signature_help, { buffer = args.buf })
  end,
})
-- misc
set('n', '<leader>s', '<cmd>set spell!<cr>', {})
set('n', '<leader>gg', '<cmd>Git<cr>', {})
-- buffer navigation
set('n', ']b', '<cmd>bn<cr>', {})
set('n', '[b', '<cmd>bp<cr>', {})
