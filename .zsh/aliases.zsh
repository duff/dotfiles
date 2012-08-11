
alias g='git'

# Override macports ssh in case it gets pulled in as a dependency
alias ssh='/usr/bin/ssh'

# Colorize output, add file type indicator, and put sizes in human readable format
alias ls='ls -GFh'

# Same as above, but in long listing format
alias ll='ls -GFhl'

# Git stuff
alias gb='git branch -a -v'
alias gs='git status'

# Rails
alias r='rails'

# Cucumber
alias cuke="bundle exec cucumber -r features"

# Pow
alias pow-restart='touch tmp/restart.txt'

# Bundler
alias b='bundle'
alias bi='bundle install --path vendor'

# Misc
alias listening_ports='lsof -i -n -P | grep LISTEN'   # Show which processes are using which ports

# zmv
alias mmv='noglob zmv -W'

# zeus
alias zg='zeus generate'
alias zc='zeus console'
alias zr='zeus rspec'
alias zk='zeus rake'
