vim9script

if !filereadable(expand('~/.config/vim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

plug#begin('~/.config/vim/plugged')
  Plug 'vimwiki/vimwiki'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'godlygeek/tabular'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  Plug 'elixir-editors/vim-elixir'
#  Plug 'prabirshrestha/asyncomplete-buffer.vim'
#  Plug 'prabirshrestha/asyncomplete-file.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
plug#end()

asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
  name: 'ultisnips',
  allowlist: ['*'],
  completor: function('asyncomplete#sources#ultisnips#completor')
}))

# g:lsp_use_native_client = 1
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
g:UltiSnipsEditSplit = 'vertical'
g:UltiSnipsExpandTrigger = '<c-s>'
g:UltiSnipsJumpForwardTrigger = "<c-j>"
g:UltiSnipsJumpBackwardTrigger = "<c-k>"
