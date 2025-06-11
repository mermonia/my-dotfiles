#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias cl='clear'
alias dotfiles='/usr/bin/git --git-dir=/home/umbraslay/.local/src/dotfiles'

export EDITOR='nvim'

eval "$(starship init bash)"
