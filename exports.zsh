export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$HOME/bin:/opt/local/bin:/opt/local/sbin:$PATH

# Setup terminal, and turn on colors
export TERM=xterm-color
export LSCOLORS=gxfxcxdxbxegedabagacad
export CLICOLOR=1

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# Enable color, and better prompt in LESS
export PAGER=most

export GIT_EDITOR="vim -f"
export EDITOR='mvim -f'

export RIAK_HOME="/Users/duff/develop/riak"

ulimit -n 1024


