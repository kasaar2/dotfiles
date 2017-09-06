alias l="ls -alGhtr"
alias u="cd .."
alias d="cd"
alias p="pwd"
alias dp="cd ~/Desktop"
alias sb="source ~/.bash_profile"
alias eb="vim ~/.bash_profile"

alias gs="git status"

if [ -z ~/.bash_local ]
then
	source ~/.bash_local
fi
