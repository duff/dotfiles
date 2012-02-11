# In Vim command mode, press v to edit the command in Vim.

autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line
