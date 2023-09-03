local cmp = require('cmp')
cmp.setup({
  snippet = {
    expand = function(args)
      require('snippy').expand_snippet(args.body)
    end
  },
  sources = {
    { name = 'snippy' },
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'async_path' },
  },
  mapping = cmp.mapping.preset.insert({
    ['<c-j>'] = cmp.mapping.scroll_docs(-4),
    ['<c-k>'] = cmp.mapping.scroll_docs(4),
    ['<c-a>'] = cmp.mapping.complete(),
    ['<c-e>'] = cmp.mapping.abort(),
    ['<cr>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
})
