vim9script

var c_config = {
	name: 'clangd',
	cmd: (server_info) => ['clangd'],
	allowlist: ['c', 'cpp']
}

var erlang_config = {
	name: 'erlang_ls',
	cmd: (server_info) => ['erlang_ls'],
	allowlist: ['erlang']
}

var rust_config = {
  name: 'rust-analyzer',
  cmd: (server_info) => ['rust-analyzer'],
  allowlist: ['rust'],
  root_uri: (server_info) => lsp#utils#path_to_uri(
    lsp#utils#find_nearest_parent_file_directory(
      lsp#utils#get_buffer_path(),
      ['Cargo.toml', '.git/']
    )),
  initialization_options: {},
}

var elixir_config = {
	name: 'elixir-ls',
	cmd: (server_info) => ['language_server.sh'],
	allowlist: ['elixir']
}

var go_config = {
	name: 'gopls',
	cmd: (server_info) => ['gopls'],
	allowlist: ['go']
}

var js_config = {
	name: 'js-lsp',
	cmd: (server_info) => ['typescript-language-server', '--stdio'],
	allowlist: ['javascript']
}

var swift_config = {
	name: 'swift-lsp',
	cmd: (server_info) => ['sourcekit-lsp'],
	allowlist: ['swift']
}

var asm_config = {
	name: 'asm-lsp',
	cmd: (server_info) => ['asm-lsp'],
	allowlist: ['asm']
}

if executable('erlang_ls')
    au User lsp_setup lsp#register_server(erlang_config)
endif

if executable('clangd')
    au User lsp_setup lsp#register_server(c_config)
endif

if executable('rust-analyzer')
    au User lsp_setup lsp#register_server(rust_config)
endif

if executable('language_server.sh')
    au User lsp_setup lsp#register_server(elixir_config)
endif

if executable('gopls')
    au User lsp_setup lsp#register_server(go_config)
endif

if executable('js-lsp')
    au User lsp_setup lsp#register_server(js_config)
endif

if executable('swift-lsp')
    au User lsp_setup lsp#register_server(swift_config)
endif

if executable('asm-lsp')
    au User lsp_setup lsp#register_server(asm_config)
endif
# g:lsp_log_verbose = 1
# g:lsp_log_file = expand('~/vim-lsp.log')
# g:asyncomplete_log_file = expand('~/asyncomplete.log')

def OnLspBufferEnabled()
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    # nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    # nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go,*.c execute('LspDocumentFormatSync')
enddef

augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled OnLspBufferEnabled()
    autocmd FileType erlang set shiftwidth=4 | set softtabstop=4 
    autocmd FileType go set shiftwidth=8 | set softtabstop=8 
augroup END
