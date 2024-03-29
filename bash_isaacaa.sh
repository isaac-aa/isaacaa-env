#!/bin/bash

# Configuration of the information displayed before $ at the command line
long_ps1 (){
export PS1="\A [\u@\[$(tput bold)\]\h\[$(tput sgr0)\]:\w]\\$: \[$(tput sgr0)\]"
}
short_ps1 (){
export PS1="$ "
}
long_ps1

# We enable grep coloring by defaults
alias grep='grep -n  --color=auto'

# Colors for ls (https://apple.stackexchange.com/questions/282185/how-do-i-get-different-colors-for-directories-etc-in-iterm2/282189)
export LSCOLORS="EHfxcxdxBxegecabagacad"
alias ls='ls -GH'
alias ll='ls -lh'

# Use vi bindings for the shell. By default we start in 'insert' mode
set -o vi

# Autocomplete git commands and branch names
if [ -f ~/.git_completion.bash ]; then
  . ~/.git_completion.bash
fi
