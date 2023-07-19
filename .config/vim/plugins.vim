vim9script

# setup plugin manager:
# curl -fLo ~/.config/vim/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

plug#begin('~/.config/vim/plugged')
  Plug 'vimwiki/vimwiki'
  Plug 'rust-lang/rust.vim'
  Plug 'elixir-editors/vim-elixir'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'lilydjwg/colorizer'
  Plug 'godlygeek/tabular'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'thomasfaingnaert/vim-lsp-snippets'
  Plug 'thomasfaingnaert/vim-lsp-ultisnips'
plug#end()

if executable('rust-analyzer')
  au User lsp_setup lsp#register_server({name: 'Rust Language Server', cmd: ['rust-analyzer'], whitelist: ['rust']})
endif

if executable('language_server.sh')
  au User lsp_setup lsp#register_server({name: 'Elixir Language Server', cmd: ['language_server.sh'], whitelist: ['elixir']})
endif

g:vimwiki_list = [{'path': '~/media/docs/wiki/', 'syntax': 'markdown', 'ext': '.md'}]
g:lsp_use_native_client = 1
g:lst_semantic_enabled = 0
g:lsp_format_sync_timeout = 1000
g:UltiSnipsExpandTrigger = "<c-s>"
g:UltiSnipsJumpForwardTrigger = "<tab>"
g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

# g:ycm_language_server = [
#       \   { 'name': 'elixir-ls',
#       \     'filetypes': [ 'elixir' ],
#       \     'cmdline': [ 'language_server.sh' ],
#       \   },
#       \ ]
