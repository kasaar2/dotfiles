# BASH
alias l="ls -alGhtr"
alias u="cd .."
alias d="cd"
alias p="pwd"
alias v="vim"
alias h='f(){ history | grep "$@" | tail -n20 | head -n -1; unset -f f; }; f'

alias dp="cd ~/Desktop"
alias lr='ls -AlFh'
alias l1='ls -1FG'
alias du="du -h -d1 -S"

# PYTHON
## launch ipython instance that is sensitive to it's virtual environment
alias ip='python -c "import IPython; IPython.terminal.ipapp.launch_new_instance()"'
alias jpn='jupyter notebook'

# GIT
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gh="git log --pretty=format:'%Cgreen%h %C(yellow)%an %ae %Cblue%ad %Creset%s %d' --graph --date=short"
alias gl='git log --oneline -5'
alias gs='git status'
alias gu='git add -u'
alias gw='git commit -m "wip"'
alias gcm='git commit -m'

# MISC
alias ev='vim ~/.vimrc'
alias eb='vim ~/.bashrc'
alias sb='source ~/.bashrc'
alias jq="jq --indent 7 --sort-keys"
alias tabs="column -t -s$'\t'"
alias zcat="gunzip -c"

function row()
{
        if [ -z "$2" ]
        then
                head -$1 | tail -1 | tr $'\t' '\n'  | cat -n
        else
		if [[ $1 = *.gz ]]
		then
			gunzip -c $1 | head -$2 | tail -1 | tr $'\t' '\n'  | cat -n
		else
			cat $1 | head -$2 | tail -1 | tr $'\t' '\n'  | cat -n
		fi
        fi
}
