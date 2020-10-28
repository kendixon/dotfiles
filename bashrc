## .bashrc
## Loaded when a shell is started
## Ken Dixon

# Colors
export TERM=xterm-color
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Terminal Prompt Colors
export PS1="\[$(tput bold)\]\[\033[38;5;14m\]\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]:\W \[$(tput bold)\]\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;202m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] >>>\\$ \[$(tput sgr0)\]"

# Aliases
alias ll="ls -lh"
alias v="vim"
alias sl="ls"
alias mv="mv -i"
alias df="df -h"
alias mkdir="mkdir -p"
alias tmux="tmux -2"
alias gs="git status"
alias gc="git commit"
alias gl="git log --decorate --graph --all"

# Homebrew
export HOMEBREW_EDITOR=vim
export HOMEBREW_FORMULA=/usr/local/Library/Formula
