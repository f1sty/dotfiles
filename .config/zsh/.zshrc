#!/bin/zsh

autoload -U colors && colors
PS1="%~ $ "
stty stop undef		# Disable ctrl-s to freeze terminal.
HISTFILE=$XDG_CACHE_HOME/zsh/history
HISTSIZE=10000000
SAVEHIST=10000000
setopt autocd extendedglob
setopt interactive_comments

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/bash/aliases" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/bash/aliases"

bindkey -v
zstyle :compinstall filename '$XDG_CONFIG_HOME/zsh/.zshrc'

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

source $XDG_CONFIG_HOME/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# fix git gpg autosigning
export GPG_TTY=$(tty)

sd () {
    sdcv -n --utf8-output --color "$@" 2>&1 | \
        fold --width=$(tput cols) | \
        less -FRX
}

shot () {
    scrot -s -e 'mv $f ~/media/images/screenshots/'
}


yta() {
    mpv --ytdl-format=bestaudio ytdl://ytsearch:"$*"
}
