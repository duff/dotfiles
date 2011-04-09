
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
alias r='rails'

# Pow
alias pow-restart='touch tmp/restart.txt'
alias pow-debug-restart='touch tmp/debug.txt; pow-restart'
alias pow-list='ls -lh ~/.pow/'

# Bundler
alias b='bundle'
alias bi='b install --path vendor'
alias be='b exec'

# Misc
alias sz='source ~/.zshrc'
alias listening_ports='lsof -i -n -P | grep LISTEN'   # Show which processes are using which ports


# alias gvim='mvim -p'
