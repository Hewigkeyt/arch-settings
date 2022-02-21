#
# ~/.bashrc
#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#colorauto
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


PS1='[\u@\h \W]\$ '

#to set after PS1 to replace the default value
# source /usr/share/gitstatus/gitstatus.prompt.sh
source /home/hewigkeyt/MyScripts/poshgit.sh
export PROMPT_COMMAND='__posh_git_ps1 "\\[\e[0;32m\]\u@\h \[\e[0;33m\]\w" " \[\e[1;34m\]\n\$\[\e[0m\] ";'$PROMPT_COMMAND

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
