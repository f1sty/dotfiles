require('snippy').setup({
  mappings = {
    is = {
      ['<c-s>'] = 'expand',
      ['<c-l>'] = 'next',
      ['<c-h>'] = 'previous',
    },
    nx = {
      ['<leader>x'] = 'cut_text',
    },
  },
})
