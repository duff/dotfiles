export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$HOME/bin:/opt/local/bin:/opt/local/sbin:/usr/local/heroku/bin:$PATH

# Our list of directories we can cd to from anywhere
export CDPATH=.:~/code:~/code/spreedly

# Setup terminal, and turn on colors
export TERM=xterm-color
export LSCOLORS=gxfxcxdxbxegedabagacad
export CLICOLOR=1

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

export GIT_EDITOR="vim"
export EDITOR='vim'

# export RIAK_HOME="/Users/duff/code/riak"

ulimit -n 4048

# For performance improvements
# http://snaprails.tumblr.com/post/241746095/rubys-gc-configuration
export RUBY_HEAP_MIN_SLOTS=600000
export RUBY_GC_MALLOC_LIMIT=59000000
export RUBY_HEAP_FREE_MIN=100000

