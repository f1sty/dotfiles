vim9script

var c_config = {
	name: 'clangd',
	cmd: ['clangd'],
	allowlist: ['c', 'cpp']
}

var erlang_config = {
	name: 'erlang_ls',
	cmd: ['erlang_ls'],
	allowlist: ['erlang']
}

var rust_config = {
	name: 'rust-analyzer',
	cmd: ['rust-analyzer'],
	allowlist: ['rust']
}

var elixir_config = {
	name: 'elixir-ls',
	cmd: ['language_server.sh'],
	allowlist: ['elixir']
}

var go_config = {
	name: 'gopls',
	cmd: ['gopls'],
	allowlist: ['go']
}

var js_config = {
	name: 'js-lsp',
	cmd: ['typescript-language-server', '--stdio'],
	allowlist: ['javascript']
}

var swift_config = {
	name: 'swift-lsp',
	cmd: ['sourcekit-lsp'],
	allowlist: ['swift']
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

    " g:lsp_format_sync_timeout = 1000
    " autocmd! BufWritePre *.rs,*.go,*.c execute('LspDocumentFormatSync')
enddef

augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled OnLspBufferEnabled()
    autocmd FileType erlang set shiftwidth=4 | set softtabstop=4 
    autocmd FileType go set shiftwidth=8 | set softtabstop=8 
augroup END
