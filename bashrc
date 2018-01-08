alias l="ls -alGhtr"
alias u="cd .."
alias d="cd"
alias p="pwd"
alias dp="cd ~/Desktop"

if [ -e ~/.bash_local ]
then
	source ~/.bash_local
fi

# launch ipython instance that is sensitive to it's virtual environment
alias ip='python -c "import IPython; IPython.terminal.ipapp.launch_new_instance()"'
alias jpn='jupyter notebook'
alias gs='git status'
alias ga='git add'
alias gd='git diff'
alias gc='git commit'
alias gcm='git commit -m'
alias gl='git log --oneline -5'
alias gh="git log --pretty=format:'%Cgreen%h %C(yellow)%an %Cblue%ad %Creset%s %d' --graph --date=short"
alias gll="git log --pretty=format:'%Cgreen%h %C(yellow)%an %Cblue%ad %Creset%s' --date=short"
alias ev='vim ~/.vimrc'
alias eb='vim ~/.bashrc'
alias sb='source ~/.bashrc'
alias jq="jq --indent 7 --sort-keys"
alias dp='cd ~/Desktop'
alias l='ls -AlFhtr'
alias lr='ls -AlFh'
alias a='ls -AlFh'
alias l1='ls -1FG'
alias du="du -h -d1 -S"
alias recent='f(){ history | grep "$@" | tail -n20 | head -n -1; unset -f f; }; f'

parse_git_branch() {
	     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]\n$ "

function row()
{
	cat $1 | head -$2 | tail -1 | tr $'\t' '\n'  | cat -n
}
