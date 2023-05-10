HISTFILE=${XDG_CACHE_HOME}/.histfile
HISTSIZE=10000
SAVEHIST=10000
# GIT_PS1_SHOWDIRTYSTATE="yes"
# GIT_PS1_SHOWSTASHSTATE="yes"
# GIT_PS1_SHOWUNTRACKEDFILES="yes"
# GIT_PS1_SHOWUPSTREAM="auto"
# GIT_PS1_SHOWCONFLICTSTATE="yes"
# GIT_PS1_SHOWCOLORHINTS="yes"
# ZLS_COLOURS=""

fpath=(${XDG_CONFIG_HOME}/zsh/completions $fpath)

setopt autocd autopushd extendedglob nomatch menucomplete interactive_comments 
setopt pushd_ignore_dups    # do not store duplicates in the stack.
setopt pushd_silent         # do not print the directory stack after pushd or popd.
setopt prompt_subst
setopt correct              # spelling correction
setopt cdable_vars          # change directory to a path stored in a variable.
setopt share_history             # share history between all sessions.
setopt hist_expire_dups_first    # expire a duplicate event first when trimming history.
setopt hist_ignore_dups          # do not record an event that was just recorded again.
setopt hist_ignore_all_dups      # delete an old recorded event if a new event is a duplicate.
setopt hist_find_no_dups         # do not display a previously found event.
setopt hist_ignore_space         # do not record an event starting with a space.
setopt hist_save_no_dups         # do not write a duplicate event to the history file.
setopt hist_verify               # do not execute immediately upon history expansion.
setopt auto_list            # automatically list choices on ambiguous completion.
setopt complete_in_word     # complete from both ends of a word.
unsetopt beep

# unset ctrl-s
stty stop undef

# use vim bind keys
bindkey -v
bindkey -v '^?' backward-delete-char

autoload edit-command-line; zle -N edit-command-line

bindkey '^e' edit-command-line

zstyle :compinstall filename '/home/f1sty/.zshrc'

zmodload zsh/complist

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1
_comp_options+=(globdots)

autoload -Uz colors
colors

[ -f "$HOME/scripts/git-prompt.sh" ] && source "$HOME/scripts/git-prompt.sh"
[ -f "$ZDOTDIR/aliases" ] && source "$ZDOTDIR/aliases"
[ -f "$ZDOTDIR/functions" ] && source "$ZDOTDIR/functions"

# https://github.com/zsh-users/zsh-autosuggestions.git
[ -f "$ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ] && source \
    "$ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

# https://github.com/zsh-users/zsh-syntax-highlighting.git
[ -f "$ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] && source \
    "$ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

[ -f "/usr/share/fzf/completion.zsh" ] && source "/usr/share/fzf/completion.zsh"
[ -f "/usr/share/fzf/key-bindings.zsh" ] && source "/usr/share/fzf/key-bindings.zsh"

export GPG_TTY=$(tty)

[[ -f "$HOME/.secrets" ]] && source "$HOME/.secrets"
[[ -f "$HOME/.cargo/env" ]] && source "$HOME/.cargo/env"

autoload -Uz vcs_info

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr '%F{yellow}|s%f'
zstyle ':vcs_info:*' unstagedstr '%F{yellow}|u%f'
zstyle ':vcs_info:*' actionformats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f'
zstyle ':vcs_info:*' formats '%F{5}[%f%F{3}%s%f%F{5}:%f%F{blue}%b%c%u%f%F{5}]%f'
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

### git: Show marker (T) if there are untracked files in repository
# Make sure you have added staged to your 'formats':  %c
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked

+vi-git-untracked(){
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
        git status --porcelain | grep -q '^?? ' 2> /dev/null ; then
        # This will show the marker if there are any untracked files in repo.
        # If instead you want to show the marker only if there are untracked
        # files in $PWD, use:
        #[[ -n $(git ls-files --others --exclude-standard) ]] ; then
        hook_com[staged]+='%F{yellow}|+%f'
    fi
}

precmd () { vcs_info }
PS1='%F{yellow}%m:%f%F{blue}%1~${vcs_info_msg_0_}%f %B%F{yellow}$%f%b '
# precmd () { __git_ps1 "%F{blue}%1~%f" " %F{yellow}$%f " }
