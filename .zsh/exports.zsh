
export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_REPOSITORY="/opt/homebrew"
export HOMEBREW_SHELLENV_PREFIX="/opt/homebrew"

export PATH=/Applications/MacVim.app/Contents/bin:/usr/local/opt/gnupg@1.4/libexec/gpgbin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$HOME/bin:/opt/local/bin:/opt/local/sbin:$HOME/.node/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:${GPG1_DIR}:$PATH

GPG1_DIR=$(brew --prefix gpg1)/libexec/gpgbin

# Our list of directories we can cd to from anywhere
export CDPATH=.:~/code

# Setup terminal, and turn on colors
export TERM=screen-256color
export LSCOLORS=gxfxcxdxbxegedabagacad
export CLICOLOR=1

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# rg is really fast - use it to give fzf its file list
# show hidden files but ignore the git directory
export FZF_DEFAULT_COMMAND="rg --files --hidden -g '!.git'"

# set color options for fzf
export FZF_DEFAULT_OPTS='
--color fg:242,bg:233,hl:65,fg+:15,bg+:234,hl+:108
--color info:108,prompt:109,spinner:108,pointer:168,marker:168
'

# export RIAK_HOME="/Users/duff/code/riak"

ulimit -n 4048

export DOCKER_MEMORY='1024'

export ERL_AFLAGS="-kernel shell_history enabled"

export KERL_BUILD_DOCS=yes
export KERL_CONFIGURE_OPTIONS="--without-javac --with-ssl=$(brew --prefix openssl@1.1)"
