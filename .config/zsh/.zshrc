HISTFILE=$XDG_CACHE_HOME/zsh/history
HISTSIZE=10000
SAVEHIST=100000
GPG_TTY=$(tty)
PS1='%F{green}%m:%f%F{yellow}%1~%f %B%F{yellow}$%f%b '

setopt autocd extendedglob notify

# vim-like line edit
bindkey -v
# unset ctrl-s
stty stop undef

zstyle :compinstall filename "$ZDOTDIR/.zshrc"
zmodload zsh/complist

autoload -Uz compinit colors
compinit
colors

zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1

[ -f "$ZDOTDIR/aliases" ] && source "$ZDOTDIR/aliases"
[ -f "$ZDOTDIR/functions" ] && source "$ZDOTDIR/functions"
[ -f "/usr/share/fzf/completion.zsh" ] && source "/usr/share/fzf/completion.zsh"
[ -f "/usr/share/fzf/key-bindings.zsh" ] && source "/usr/share/fzf/key-bindings.zsh"
[ -f "$HOME/.secrets" ] && source "$HOME/.secrets"
[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"
