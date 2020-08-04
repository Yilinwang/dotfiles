export CLICOLOR='true'
export LSCOLORS="gxfxcxdxcxegedabagacad"

_parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

function set_bash_prompt() {
    local EXIT="$?"
    PS1='${debian_chroot:+($debian_chroot)}'
    PS1+='\[\033[01;35m\]\[\u\]@\[\h\]\[\033[00m\]: '
    PS1+='\[\033[01;32m\]\[\w\]\[\033[00m\]'
    #PS1+='\[\033[01;33m\]$(_parse_git_branch)\[\033[00m\]'
    if [ -z ${VIRTUAL_ENV+x} ]; then
        PS1+=''
    else
        #PS1+='$(_color "01;36" "($(basename $VIRTUAL_ENV))")'
        PS1+=' \[\033[01;33m\]($(basename $VIRTUAL_ENV))\[\033[00m\]'
    fi  
    PS1+='\n'
    if [ $EXIT = 0 ]; then
        prompt=('✧*｡٩(ˊᗜˋ*)٩✧*｡' 'Σ>―(〃°ω°〃)♡→')
        PS1+='\[\033[01;36m\]${prompt[$RANDOM%2]} \$ \[\033[00m\]'
    else
        PS1+='\[\033[01;91m\](╬ﾟдﾟ)▄︻┻┳═一 \$ \[\033[00m\]'
    fi  
}

PROMPT_COMMAND=set_bash_prompt

alias ll='ls -al'
alias rm='trashfunc'
alias realrm='/bin/rm'
alias grep='grep --color=auto'

cd() { builtin cd "$@"; ls; }

function trashfunc { mv "$@" ~/.Trash; }

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
