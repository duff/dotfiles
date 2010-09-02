
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

# Git stuff
alias gl='git log --no-merges --pretty=format:"* %s (%cn) %b"'
alias gb='git branch -a -v'
alias gs='git status'
alias gcm='git commit'
alias ga='git add .'

# Rails
alias bir='bundle install --relock'
alias r='rails'

# Misc
alias sz='source ~/.zshrc'
alias listening_ports='lsof -i -n -P | grep LISTEN'   # Show which processes are using which ports


# alias gvim='mvim -p'
