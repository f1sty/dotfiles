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
  Plug 'tpope/vim-fugitive'
  Plug 'godlygeek/tabular'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  Plug 'prabirshrestha/asyncomplete-buffer.vim'
  Plug 'prabirshrestha/asyncomplete-file.vim'
  Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
plug#end()

# language servers / auto-completion settings
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
      \ 'name': 'buffer',
      \ 'allowlist': ['*'],
      \ 'blocklist': ['go'],
      \ 'completor': function('asyncomplete#sources#buffer#completor'),
      \ 'config': {
      \    'max_buffer_size': 5000000,
      \  },
      \ }))
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
      \ 'name': 'file',
      \ 'allowlist': ['*'],
      \ 'priority': 10,
      \ 'completor': function('asyncomplete#sources#file#completor')
      \ }))
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
      \ 'name': 'ultisnips',
      \ 'allowlist': ['*'],
      \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
      \ }))

g:lsp_settings = {'elixir-ls': {'cmd': ['language_server.sh']}}
g:lsp_use_native_client = 1
g:lsp_diagnostics_highlights_enabled = 0
g:lsp_diagnostics_signs_error = {'text': '✗'}
g:lsp_diagnostics_signs_warning = {'text': '‼'}
g:lsp_diagnostics_signs_hint = {'text': '💬'}
g:lsp_diagnostics_signs_information = {'text': 'ℹ️'}
g:lsp_document_code_action_signs_hint = {'text': '🔨'}
g:lsp_diagnostics_virtual_text_enabled = 1
g:lsp_diagnostics_virtual_text_align = "right"
g:lsp_inlay_hints_enabled = 1
g:lsp_document_highlight_delay = 200

# use markdown for VimWiki
g:vimwiki_list = [{'path': '~/media/docs/wiki/', 'syntax': 'markdown', 'ext': '.md'}]

# snippets settings
g:snips_author = "Yurii <f1sty> Skrynnykov"
g:UltiSnipsExpandTrigger = '<c-s>'
g:UltiSnipsListSnippets = '<c-l>'
g:UltiSnipsJumpForwardTrigger = "<c-j>"
g:UltiSnipsJumpBackwardTrigger = "<c-k>"
