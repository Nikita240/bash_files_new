#!/bin/bash
#
# colors are defined here, using tput


# Set term to 256color mode, if 256color is not supported, colors won't work properly
if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then 
	export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
	export TERM=xterm-256color
fi


NORMAL=$(tput sgr0) # Reset text format to the terminal's default

# -------------------------------

BOLD=$(tput bold)
DIM=$(tput dim)
UNDERLINE=$(tput smul)
BLINK=$(tput blink)
REVERSE=$(tput smso)

# -------------------------------

BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
GREY=$(tput setaf 8)

# -------------------------------

BETTER_YELLOW=$(tput setaf 220)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
ORANGE=$(tput setaf 172)
PURPLE=$(tput setaf 141)
BETTER_GREY=$(tput setaf 248)