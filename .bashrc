if [[ $- != *i* ]] ; then
	return
fi

shopt -so vi
shopt -so pipefail
source <(fzf --bash)

HISTCONTROL=erasedups

shopt -s checkwinsize
shopt -s histappend
shopt -s autocd
shopt -s expand_aliases
shopt -s cdspell
shopt -s dirspell
shopt -s globstar

alias -- ip='ip -c'
alias -- ll='ls -l'
alias -- nn='hx -w ~/media/docs/notes ~/media/docs/notes/index.md'

export ERL_AFLAGS="-kernel shell_history enabled"
export _JAVA_AWT_WM_NONREPARENTING=1
export PATH="${HOME}/.local/bin:${PATH}"
