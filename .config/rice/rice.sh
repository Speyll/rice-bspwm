#!/bin/sh

# Make the mouse visible
xsetroot -cursor_name left_ptr

# Wallpapers
pkill -x xwinwrap | pkill -x hsetroot | pkill -x sxiv
	# Static background
	hsetroot -cover $HOME/Pictures/wall.webp
	#hsetroot -solid "#000000"

	# Animated background
	#xwinwrap -ov -ni -fs -- sxiv -a -e WID -f -b -g 1366x768 ~/Pictures/ani.webp &

# Picom (-CGb disable all effects)
pkill -x picom
picom -b &

# Defaults
amixer -q set Master 100% &
xbacklight -set 60 &

# Lemonbar
pkill -x panel | pkill -x lemonbar
$HOME/.local/bin/lemonbar/panel | lemonbar -g x20 -f "kakwafont:style=Regular:pixelsize=12" -o -1 -f "Siji:style=Regular:size=10" -B "#002b36" -F "#657b83" &