
alias g='git'

# Colorize output, add file type indicator, and put sizes in human readable format
alias ls='ls -GFh'

# Same as above, but in long listing format
alias ll='ls -GFhl'

# Git stuff
alias gaa='git add --all'
alias gb='git branch -a -v'
alias gd='git diff'
alias gdc='git diff --cached'
alias gco='git checkout'
alias gcm='git commit'
alias gl='git log'
alias gll='git log --no-merges --pretty=format:"* %s (%cn)%n%w(80,2,2)%b"'
alias glp='git log --branches --date=short --graph --pretty=format:"%Cred%h%Creset %Cblue%ad%Creset %C(yellow)%aN%Creset %s%C(bold green)%d%Creset" -30'
alias gp='git push'
alias gs='git status'
alias grmd='git rm `git ls-files --deleted`'


# Rails
alias r='rails'

# Pow
alias pow-restart='touch tmp/restart.txt'

# Bundler
alias b='bundle'
alias bi='bundle install --path vendor'

# Misc
alias listening_ports='lsof -i -n -P | grep LISTEN'   # Show which processes are using which ports

# zmv
alias mmv='noglob zmv -W'

