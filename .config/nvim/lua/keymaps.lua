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
set('n', '<leader>qq', ts.quickfix, {})
set('n', '<leader>m', '<cmd>silent make<cr>')
set('n', '<leader>pm', '<cmd>set makeprg=')
set('n', '<leader>pf', '<cmd>set formatprg=')
set('n', 'fn', '<cmd>let @+ = expand("%")<cr>')
