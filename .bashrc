export TERM=xterm-256color

# enable git-prompt
# cp /usr/lib/git-core/git-sh-prompt ~/.git-prompt.sh
. ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 "(%s)")\$ '

# venv
# activate venv and set this VIRTUAL_ENV in tmux present session environment
alias venv='source .venv/bin/activate \
            && tmux set-environment `echo ${PWD##*/}_venv | tr - _` $VIRTUAL_ENV'
# auto activate venv
path_venv=$(eval echo $`echo ${PWD##*/}_venv | tr - _`)
if [[ ${PWD}/.venv == $path_venv ]]; then
    source .venv/bin/activate
fi
