
alias g='git'

# Same as above, but in long listing format
alias ll='ls -GFhl'

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

alias emax='open -a /Applications/Emacs.app $1'

alias services=$HOME/spreedly/dev-services/bin/services
