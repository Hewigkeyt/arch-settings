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
source /usr/share/gitstatus/gitstatus.prompt.sh

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
