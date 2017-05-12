export CLICOLOR='true'
export LSCOLORS="gxfxcxdxcxegedabagacad"
export PS1='\[\033[01;35m\]\u@\h\[\033[00m\]: \[\033[01;32m\]\w\[\033[00m\]\n\[\033[01;31m\]\$\[\033[00m\] '

alias ll='ls -al'
alias rm='trashfunc'
alias realrm='/bin/rm'
alias finder='open -a Finder .'

cd() { builtin cd "$@"; ls; }
pdf() { open -a Preview "$@"; }

alias startvm='VBoxHeadless -s ubuntuServer&'
alias stopvm='VBoxManage controlvm ubuntuServer poweroff'
alias lsvm='VBoxManage list runningvms'

alias python2='python'

function trashfunc { mv "$@" ~/.Trash; }

export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
