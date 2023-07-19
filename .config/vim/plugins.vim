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
  Plug 'yegappan/lsp'
plug#end()

# language servers settings
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
  path: '/home/f1sty/.local/bin/nextls',
  args: ['--stdio'],
  syncInit: v:true,
  omnicompl: v:true
}

var lspServers = [clangd, rust, elixir]
autocmd VimEnter * call LspAddServer(lspServers)

var lspOpts = {
  aleSupport: v:false,
  autoComplete: v:true,
  autoHighlight: v:true,
  autoHighlightDiags: v:true,
  autoPopulateDiags: v:false,
  completionMatcher: 'case',
  completionTextEdit: v:true,
  completionKinds: {},
  customCompletionKinds: v:false,
  diagSignErrorText: '☢',
  diagSignInfoText: 'ℹ️',
  diagSignHintText: '💬',
  diagSignWarningText: '🖖',
  diagVirtualTextAlign: 'above',
  echoSignature: v:false,
  hideDisabledCodeActions: v:false,
  highlightDiagInline: v:true,
  hoverInPreview: v:false,
  ignoreMissingServer: v:false,
  keepFocusInReferences: v:false,
  noNewlineInCompletion: v:false,
  outlineOnRight: v:false,
  outlineWinSize: 20,
  showDiagInBalloon: v:true,
  showDiagInPopup: v:true,
  showDiagOnStatusLine: v:false,
  showDiagWithSign: v:true,
  showDiagWithVirtualText: v:false,
  showInlayHints: v:false,
  showSignature: v:true,
  snippetSupport: v:true,
  ultisnipsSupport: v:true,
  usePopupInCodeAction: v:true,
  useQuickfixForLocations: v:false,
  useBufferCompletion: v:false,
}
autocmd VimEnter * call LspOptionsSet(lspOpts)
setlocal formatexpr=lsp#lsp#FormatExpr()

g:vimwiki_list = [{'path': '~/media/docs/wiki/', 'syntax': 'markdown', 'ext': '.md'}]
g:UltiSnipsExpandTrigger = "<c-s>"
g:UltiSnipsJumpForwardTrigger = "<tab>"
g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
