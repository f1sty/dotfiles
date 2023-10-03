ZDOTDIR="$HOME/.config/zsh"
EDITOR="nvim"
VISUAL="nvim"
TERMINAL="st"
BROWSER="firefox"
# BLK="04" CHR="04" DIR="04" EXE="00" REG="00" HARDLINK="00" SYMLINK="06" MISSING="00" ORPHAN="01" FIFO="0F" SOCK="0F" OTHER="02"
# export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"
BLK="0B" CHR="0B" DIR="04" EXE="06" REG="00" HARDLINK="06" SYMLINK="06" MISSING="00" ORPHAN="09" FIFO="06" SOCK="0B" OTHER="06"
NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"
NNN_FIFO='/tmp/nnn.fifo'
NNN_PLUG='p:preview-tui;o:fzopen;c:fzcd;u:getplugs:x:!chmod +x $nnn'

GOPATH="$HOME/coding/go"
# FLYCTL_INSTALL="/home/f1sty/.fly"
CM_LAUNCHER=rofi
# ERL_TOP="$HOME/src/otp"
XDG_CONFIG_HOME="$HOME/.config"
XDG_DATA_HOME="$HOME/.local/share"
XDG_CACHE_HOME="$HOME/.cache"
LESSHISTFILE="-"
WINEPREFIX="${XDG_DATA_HOME}/wineprefixes/default"
TMUX_TMPDIR="$XDG_RUNTIME_DIR"
ANDROID_SDK_HOME="${XDG_CONFIG_HOME}/android"
RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME}/rg/config"
# export VIMINIT="source ${XDG_CONFIG_HOME}/vim/vimrc"
HISTFILE="${XDG_DATA_HOME}/history"
WEECHAT_HOME="${XDG_CONFIG_HOME}/weechat"
FZF_TMUX=1
FZF_DEFAULT_COMMAND="fd --type f --follow --hidden --color=never"
FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"
FZF_ALT_C_COMMAND="fd --type d . --follow --hidden --color=never"
FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"
LESS=-R
LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
LESS_TERMCAP_me="$(printf '%b' '[0m')"
LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
LESS_TERMCAP_se="$(printf '%b' '[0m')"
LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
LESS_TERMCAP_ue="$(printf '%b' '[0m')"
LESSOPEN="| /usr/bin/highlight -O ansi %s 2>/dev/null"
QT_QPA_PLATFORMTHEME="gtk2"	# Have QT use gtk2 theme.
MOZ_USE_XINPUT2=1		# Mozilla smooth scrolling/touchpads.
# export MOZ_ENABLE_WAYLAND=1
AWT_TOOLKIT="MToolkit wmname LG3D"	#May have to install wmname
ANDROID_PREFS_ROOT="${XDG_CONFIG_HOME}/android"
ADB_KEYS_PATH="$ANDROID_PREFS_ROOT"
ANDROID_EMULATOR_HOME="${XDG_DATA_HOME}/android/emulator"
GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
_JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
_JAVA_AWT_WM_NONREPARENTING=1
ERL_AFLAGS="-kernel shell_history enabled"
# KERL_BUILD_DOCS=yes
# export TERM=st-256color
# PATH=$HOME/.cache/rebar3/bin:$FLYCTL_INSTALL/bin:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/scripts:$HOME/.mix/escripts:$PATH
# export LIBVA_DRIVER_NAME=nvidia
# export VDPAU_DRIVER=nvidia
# export NVD_BACKEND=direct
# BEMENU_OPTS="--list 40 --prompt '>' --binding vim"
# WLR_NO_HARDWARE_CURSORS=1
# LFS=/mnt/hdd/lfs

path=("$HOME/scripts" "$HOME/.local/bin" "$XDG_CACHE_HOME/rebar3/bin" "$HOME/.mix/escripts" $path)
# [ -f "$HOME/.secrets" ] && source "$HOME/.secrets"
# [[ -f "$XDG_CONFIG_HOME/bash/bashrc" ]] && source "$XDG_CONFIG_HOME/bash/bashrc"
# [[ -f "$XDG_CONFIG_HOME/bash/aliases" ]] && source "$XDG_CONFIG_HOME/bash/aliases"
# [[ -f "$XDG_CONFIG_HOME/bash/functions" ]] && source "$XDG_CONFIG_HOME/bash/functions"
# [[ -f "$HOME/.cargo/env" ]] && source "$HOME/.cargo/env"
