require('keymaps')
require('options')
require('plugins')
require('plugins.lualine')
require('plugins.comment')
require('plugins.nvim-surround')
require('plugins.barbar')
require('plugins.mason')
require('plugins.lsp')
require('plugins.cmp')
require('plugins.treesitter')
-- require('plugins.onedark')
require('plugins.telescope')
require('plugins.colorizer')

-- LSP Diagnostics Options Setup 
local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = ''
  })
end

sign({name = 'DiagnosticSignError', text = ''})
sign({name = 'DiagnosticSignWarn', text = ''})
sign({name = 'DiagnosticSignHint', text = ''})
sign({name = 'DiagnosticSignInfo', text = ''})

vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = false,
    float = {
        border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
    },
})

vim.cmd([[
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
