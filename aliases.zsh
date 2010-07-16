
alias g='git'

# Override macports ssh in case it gets pulled in as a dependency
alias ssh='/usr/bin/ssh'


# Colorize output, add file type indicator, and put sizes in human readable format
alias ls='ls -GFh'

# Same as above, but in long listing format
alias ll='ls -GFhl'

alias ss='./script/server'
alias sc='./script/console'
alias vi='vim'

alias gl='git log --no-merges --pretty=format:"* %s (%cn) %b"'
alias gb='git branch -a -v'
alias gs='git status'
alias gcm='git commit'
alias ga='git add .'

alias r='rails'

# alias gvim='mvim -p'
