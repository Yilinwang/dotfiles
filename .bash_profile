export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/Desktop/nand2tetris/tools
export PATH=/usr/local/openssl/bin:$PATH
export MANPATH=/usr/local/openssl/ssl/man:$MANPATH
export PATH=/Library/TeX/texbin:$PATH

export CLICOLOR='true'
export LSCOLORS="gxfxcxdxcxegedabagacad"
export PS1='\[\033[01;35m\]\u@\h\[\033[00m\]: \[\033[01;32m\]\w\[\033[00m\]\n\[\033[01;31m\]\$\[\033[00m\] '

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin

#export NUM_DIR=~/.nvm
#source $(brew --prefix nvm)/nvm.sh

alias la='ls -a'
alias ll='ls -l'
alias rm='trashfunc'
alias realrm='/bin/rm'

alias python='python3'
alias pip='pip3'

export WORKON_HOME=~/virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
alias mkvirtualenv='mkvirtualenv --python=/Library/Frameworks/Python.framework/Versions/3.4/bin/python3'

function trashfunc { mv "$@" ~/.Trash; }
