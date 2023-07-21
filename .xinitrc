#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

setxkbmap -layout "us,ua" -option "grp:shifts_toggle,terminate:ctrl_alt_bksp,compose:menu"
# setxkbmap -layout "us,ua,jp" -variant ",,kana" -option "grp:alt_shift_toggle,terminate:ctrl_alt_bksp,compose:menu"
# sudo mouseless --config ~/.config/mouseless/config.yaml &
xset -dpms
xset s off

# key refresh rate
xset r rate 300 35

# mouse acceleration
xset m 3/2 6

# set random background
~/.fehbg &

xsetroot -cursor_name left_ptr
xhost +
# slstatus &
# dwm_bar.sh &
deadpan &
keynav
# picom &
clipmenud &
exec startdwm
# wmname LG3D

# japanese inpput stuff
# export GTK_IM_MODULE=uim
# export QT_IM_MODULE=uim
# uim-xim &
# export XMODIFIERS=@im=uim
