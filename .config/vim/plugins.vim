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
  Plug 'yegappan/lsp'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
plug#end()

# language servers settings
var lspOpts = {
  'aleSupport': false,
  'autoComplete': true,
  'autoHighlight': false,
  'autoHighlightDiags': true,
  'autoPopulateDiags': false,
  'completionMatcher': 'fuzzy',
  'completionTextEdit': false,
  'completionKinds': {
    "Method": "method()",
    "Snippet": "snip",
    "Function": "fn()",
    "Field": "field",
    "Module": "module",
    "Text": "text",
    "Constructor": "constructor",
    "Variable": "var",
    "Class": "class",
    "Interface": "interface",
    "Property": "prop",
    "Unit": "unit",
    "Value": "value",
    "Enum": "enum",
    "Keyword": "keyword",
    "Color": "color",
    "File": "file",
    "Reference": "ref",
    "Folder": "dir",
    "EnumMember": "enum member",
    "Constant": "const",
    "Struct": "struct",
    "Event": "event",
    "Operator": "op",
    "TypeParameter": "type param",
    "Buffer": "buffer"
  },
  'customCompletionKinds': true,
  'diagSignErrorText': '💀',
  'diagSignInfoText': 'ℹ️',
  'diagSignHintText': '💬',
  'diagSignWarningText': '🖖',
  'diagVirtualTextAlign': 'above',
  'echoSignature': false,
  'hideDisabledCodeActions': true,
  'highlightDiagInline': false,
  'hoverInPreview': false,
  'ignoreMissingServer': false,
  'keepFocusInDiags': true,
  'keepFocusInReferences': true,
  'noNewlineInCompletion': false,
  'outlineOnRight': false,
  'outlineWinSize': 20,
  'showDiagInBalloon': false,
  'showDiagInPopup': true,
  'showDiagOnStatusLine': true,
  'showDiagWithSign': true,
  'showDiagWithVirtualText': false,
  'showInlayHints': false,
  'showSignature': true,
  'snippetSupport': false,
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
  path: '/home/f1sty/.local/bin/language_server.sh',
  args: [],
  syncInit: v:true
}

var lspServers = [clangd, rust, elixir]
autocmd VimEnter * call LspAddServer(lspServers)

setlocal formatexpr=lsp#lsp#FormatExpr()

# use markdown for VimWiki
g:vimwiki_list = [{'path': '~/media/docs/wiki/', 'syntax': 'markdown', 'ext': '.md'}]

# snippets settings
g:snips_author = "Yurii <f1sty> Skrynnykov"
g:UltiSnipsExpandTrigger = '<c-s>'
g:UltiSnipsListSnippets = '<c-l>'
g:UltiSnipsJumpForwardTrigger = "<c-j>"
g:UltiSnipsJumpBackwardTrigger = "<c-k>"
