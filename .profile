#!/bin/sh
# .profile - Bourne Shell startup script for login shells

# These are normally set through /etc/profile in Linux based distros or through /etc/login.conf in BSDs
# You may override them here if wanted.
# PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$HOME/bin;

# Personal additional paths:
export PATH="$PATH:$HOME/.local/bin:$HOME/.local/bin/scripts:$HOME/.local/bin/tools:$HOME/.local/bin/toys"

# BLOCKSIZE=K;	export BLOCKSIZE
# Setting TERM is normally done through /etc/ttys.
# Do only override if you're sure that you'll never log in via telnet or xterm or a serial line.

TERM=st;        export TERMINAL
EDITOR=vim;   	export EDITOR
PAGER=less;  	export PAGER
FILE=nnn;       export FILE
BROWSER=surf;   export BROWSER
READER=mupdf;   export READER

# Rearranging some files
export SUDO_ASKPASS="$HOME/.local/bin/tools/dmenupass"
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"

# set ENV to a file invoked each time sh is started for interactive use.
ENV=$HOME/.bashrc; export ENV

# Start graphical server if bspwm not already running (replace bspwm with whatever wm you use)
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x bspwm >/dev/null && exec startx

