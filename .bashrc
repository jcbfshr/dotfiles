#
# ~/.bashrc
#

alias ls='ls --color=auto'
set PS1 '[\u@\h \W]\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
alias install="sudo pacman -S"
alias define='googler -n 2 define'
export EDITOR=nvim
