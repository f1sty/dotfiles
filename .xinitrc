#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# systemctl --user start redshift.service
systemctl --user start clipmenud.service

# setxkbmap -layout "us,ua,jp" -variant ",,kana" -option "grp:shifts_toggle,terminate:ctrl_alt_bksp,compose:menu"
# keynav
# xset -dpms
# xset s off
# key refresh rate
xset r rate 300 35
# mouse acceleration
xset m 3/2 6
# set random background
~/.fehbg &
# deadpan &
# picom &
# xsetwacom set 'Wacom One by Wacom M Pen stylus' MapToOutput HEAD-0
exec dwm

# japanese input stuff
# export GTK_IM_MODULE=uim
# export QT_IM_MODULE=uim
# uim-xim &
# export XMODIFIERS=@im=uim
