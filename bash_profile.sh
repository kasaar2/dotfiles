alias l="ls -alGhtr"
alias u="cd .."
alias d="cd"
alias p="pwd"
alias dp="cd ~/Desktop"
alias sb="source ~/.bash_profile"
alias eb="vim ~/.bash_profile"
alias el="vim ~/.bash_local"

alias ga='git add'
alias gd='git diff'
alias gs="git status"

if [ -e ~/.bash_local ]
then
	source ~/.bash_local
fi
