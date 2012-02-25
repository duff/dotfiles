
alias g='git'

# Override macports ssh in case it gets pulled in as a dependency
alias ssh='/usr/bin/ssh'

# Colorize output, add file type indicator, and put sizes in human readable format
alias ls='ls -GFh'

# Same as above, but in long listing format
alias ll='ls -GFhl'

alias vi='vim'

# Git stuff
alias gl='git log --no-merges --pretty=format:"* %s %b (%cn)"'
alias gb='git branch -a -v'
alias gs='git status'
alias gcm='git commit'
alias ga='git add .'

# Rails
alias r='rails'

# Cucumber
alias cuke="bundle exec cucumber -r features"

# Pow
alias pow-restart='touch tmp/restart.txt'
alias pow-debug-restart='touch tmp/debug.txt; pow-restart'

# Bundler
alias b='bundle'
alias bi='bundle install --path vendor'
alias be='bundle exec'

# Misc
alias listening_ports='lsof -i -n -P | grep LISTEN'   # Show which processes are using which ports

