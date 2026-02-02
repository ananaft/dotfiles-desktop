#!/bin/sh
# original file by https://github.com/BreadOnPenguins

# default programs
export EDITOR="nvim"
export TERM="alacritty"
export TERMINAL="alacritty"
export BROWSER="firefox"
# export DISPLAY=:0

# follow XDG base dir specification
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# history files
export LESSHISTFILE="$XDG_CACHE_HOME/less_history"
export PYTHON_HISTORY="$XDG_DATA_HOME/python/history"
