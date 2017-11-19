export CLICOLOR='true'
export LSCOLORS="gxfxcxdxcxegedabagacad"
export PS1='\[\033[01;35m\]\u@\h\[\033[00m\]: \[\033[01;32m\]\w\[\033[00m\]\n\[\033[01;31m\]\$\[\033[00m\] '

alias ll='ls -al'
alias rm='trashfunc'
alias realrm='/bin/rm'
alias finder='open -a Finder .'
alias grep='grep --color=auto'

cd() { builtin cd "$@"; ls; }
pdf() { open -a Preview "$@"; }

alias startvm='VBoxHeadless -s ubuntuServer&'
alias stopvm='VBoxManage controlvm ubuntuServer poweroff'
alias lsvm='VBoxManage list runningvms'

alias python2='python'

function trashfunc { mv "$@" ~/.Trash; }

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
