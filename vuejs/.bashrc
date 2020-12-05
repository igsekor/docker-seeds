# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# PROMTING
export PS1="\[\033[33;1m\\D{%F %T} > [\[\033[36m\] \u\[\033[33;1m\]@\[\033[31m\]\h:\[\033[33;1m\] \w]\[\033[m\]\\n$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad