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
  Plug 'lilydjwg/colorizer'
  Plug 'godlygeek/tabular'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'yegappan/lsp'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
plug#end()

# language servers settings
var lspOpts = {
  'aleSupport': false,
  'autoComplete': true,
  'autoHighlight': true,
  'autoHighlightDiags': true,
  'autoPopulateDiags': false,
  'completionMatcher': 'case',
  'completionTextEdit': true,
  'completionKinds': {},
  'customCompletionKinds': false,
  'diagSignErrorText': '💀',
  'diagSignInfoText': 'ℹ️',
  'diagSignHintText': '💬',
  'diagSignWarningText': '🖖',
  'diagVirtualTextAlign': 'above',
  'echoSignature': true,
  'hideDisabledCodeActions': false,
  'highlightDiagInline': true,
  'hoverInPreview': false,
  'ignoreMissingServer': false,
  'keepFocusInReferences': false,
  'noNewlineInCompletion': false,
  'outlineOnRight': false,
  'outlineWinSize': 20,
  'showDiagInBalloon': false,
  'showDiagInPopup': false,
  'showDiagOnStatusLine': true,
  'showDiagWithSign': true,
  'showDiagWithVirtualText': false,
  'showInlayHints': true,
  'showSignature': true,
  'snippetSupport': true,
  'ultisnipsSupport': true,
  'usePopupInCodeAction': true,
  'useQuickfixForLocations': false,
  'useBufferCompletion': true,
}
autocmd VimEnter * g:LspOptionsSet(lspOpts)

var clangd = {
  name: 'clangd',
  filetype: ['c', 'cpp'],
  path: '/usr/bin/clangd',
  args: ['--background-index']
}

var rust = {
  name: 'rust-analyzer',
  filetype: ['rust'],
  path: '/usr/bin/rust-analyzer',
  args: [],
  syncInit: v:true
}

var elixir = {
  name: 'elixir',
  filetype: ['elixir'],
  path: 'language_server.sh',
  args: [],
  syncInit: v:true
}

var lspServers = [clangd, rust, elixir]
autocmd VimEnter * g:LspAddServer(lspServers)

setlocal formatexpr=lsp#lsp#FormatExpr()

# use markdown for VimWiki
g:vimwiki_list = [{'path': '~/media/docs/wiki/', 'syntax': 'markdown', 'ext': '.md'}]

# snippets settings
g:snips_author = "Yurii <f1sty> Skrynnykov"
g:UltiSnipsExpandTrigger = '<c-s>'
g:UltiSnipsListSnippets = '<c-l>'
g:UltiSnipsJumpForwardTrigger = "<c-j>"
g:UltiSnipsJumpBackwardTrigger = "<c-k>"
