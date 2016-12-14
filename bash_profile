export CLICOLOR='true'
export LSCOLORS="gxfxcxdxcxegedabagacad"
export PS1='\[\033[01;35m\]\u@\h\[\033[00m\]: \[\033[01;32m\]\w\[\033[00m\]\n\[\033[01;31m\]\$\[\033[00m\] '

alias la='ls -a'
alias ll='ls -l'
alias rm='trashfunc'
alias realrm='/bin/rm'

function trashfunc { mv "$@" ~/.Trash; }

export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
