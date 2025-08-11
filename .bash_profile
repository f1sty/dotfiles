export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="foot"
export BROWSER="firefox"
export NNN_FIFO="/tmp/nnn.fifo"
export NNN_PLUG='p:preview-tui;o:fzopen;c:fzcd;u:getplugs;x:!chmod +x "$nnn";X:!chmod -x "$nnn"'
export CM_LAUNCHER="wofi"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export LESSHISTFILE="-"
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME}/rg/config"
export HISTFILE="${XDG_DATA_HOME}/history"
export FZF_TMUX=1
export FZF_TMUX_OPTS="-p"
export FZF_DEFAULT_COMMAND="fd --type f --follow --hidden --color=never"
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"
export FZF_ALT_C_COMMAND="fd --type d . --follow --hidden --color=never"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"
export LESS="-R"
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"
export LESSOPEN="| /usr/bin/highlight -O ansi %s 2>/dev/null"
export QT_QPA_PLATFORMTHEME="gtk2"	# Have QT use gtk2 theme.
export MOZ_USE_XINPUT2=1		# Mozilla smooth scrolling/touchpads.
export MOZ_ENABLE_WAYLAND=1
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dawt.toolkit.name=WLToolkit'
export _JAVA_AWT_WM_NONREPARENTING=1
export ERL_AFLAGS="-kernel shell_history enabled"
export PATH=$HOME/dev/flutter/bin:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/scripts:$PATH
export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable

[[ -f "$XDG_CONFIG_HOME/bash/vars" ]] && source "$XDG_CONFIG_HOME/bash/vars"
[[ -f "$XDG_CONFIG_HOME/bash/bashrc" ]] && source "$XDG_CONFIG_HOME/bash/bashrc"
[[ -f "$XDG_CONFIG_HOME/bash/aliases" ]] && source "$XDG_CONFIG_HOME/bash/aliases"
[[ -f "$XDG_CONFIG_HOME/bash/functions" ]] && source "$XDG_CONFIG_HOME/bash/functions"
