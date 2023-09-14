export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export DOTFILES="$HOME/downloads/.dotfiles"
# BLK="04" CHR="04" DIR="04" EXE="00" REG="00" HARDLINK="00" SYMLINK="06" MISSING="00" ORPHAN="01" FIFO="0F" SOCK="0F" OTHER="02"
# export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"
BLK="0B" CHR="0B" DIR="04" EXE="06" REG="00" HARDLINK="06" SYMLINK="06" MISSING="00" ORPHAN="09" FIFO="06" SOCK="0B" OTHER="06"
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"
export NNN_FIFO='/tmp/nnn.fifo'
export NNN_PLUG='p:preview-tui;o:fzopen;c:fzcd;u:getplugs:x:!chmod +x $nnn'

export GOPATH="$HOME/coding/go"
export FLYCTL_INSTALL="/home/f1sty/.fly"
export CM_LAUNCHER=rofi
export ERL_TOP="$HOME/src/otp"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export LESSHISTFILE="-"
export WINEPREFIX="${XDG_DATA_HOME}/wineprefixes/default"
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export ANDROID_SDK_HOME="${XDG_CONFIG_HOME}/android"
export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME}/rg/config"
# export VIMINIT="source ${XDG_CONFIG_HOME}/vim/vimrc"
export HISTFILE="${XDG_DATA_HOME}/history"
export WEECHAT_HOME="${XDG_CONFIG_HOME}/weechat"
export FZF_TMUX=1
export FZF_DEFAULT_COMMAND="fd --type f --follow --hidden --color=never"
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"
export FZF_ALT_C_COMMAND="fd --type d . --follow --hidden --color=never"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"
export LESS=-R
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
# export MOZ_ENABLE_WAYLAND=1
export AWT_TOOLKIT="MToolkit wmname LG3D"	#May have to install wmname
export ANDROID_PREFS_ROOT="${XDG_CONFIG_HOME}/android"
export ADB_KEYS_PATH="$ANDROID_PREFS_ROOT"
export ANDROID_EMULATOR_HOME="${XDG_DATA_HOME}/android/emulator"
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
export _JAVA_AWT_WM_NONREPARENTING=1
export ERL_AFLAGS="-kernel shell_history enabled"
export KERL_BUILD_DOCS=yes
# export TERM=st-256color
export PATH=$HOME/.cache/rebar3/bin:$FLYCTL_INSTALL/bin:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/scripts:$HOME/.mix/escripts:$PATH
# export LIBVA_DRIVER_NAME=nvidia
# export VDPAU_DRIVER=nvidia
# export NVD_BACKEND=direct
export BEMENU_OPTS="--list 40 --prompt '>' --binding vim"
export WLR_NO_HARDWARE_CURSORS=1
export LFS=/mnt/hdd/lfs

[[ -f "$XDG_CONFIG_HOME/bash/bashrc" ]] && source "$XDG_CONFIG_HOME/bash/bashrc"
[[ -f "$XDG_CONFIG_HOME/bash/aliases" ]] && source "$XDG_CONFIG_HOME/bash/aliases"
[[ -f "$XDG_CONFIG_HOME/bash/functions" ]] && source "$XDG_CONFIG_HOME/bash/functions"
[[ -f "$HOME/.secrets" ]] && source "$HOME/.secrets"
[[ -f "$HOME/.cargo/env" ]] && source "$HOME/.cargo/env"
[[ -f "$HOME/scripts/all_elixir_auto_complete.bash" ]] && source "$HOME/scripts/all_elixir_auto_complete.bash"
