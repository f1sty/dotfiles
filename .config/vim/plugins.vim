vim9script

# setup plugin manager:
# curl -fLo ~/.config/vim/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.config/vim/plugged')
  Plug 'vimwiki/vimwiki'
call plug#end()

g:vimwiki_list = [{'path': '~/media/docs/wiki/', 'syntax': 'markdown', 'ext': '.md'}]

