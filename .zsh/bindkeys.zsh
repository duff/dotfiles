
# To see the key combo you want to use just do:
# cat > /dev/null
# And press it

bindkey -v

bindkey "^R"      history-incremental-search-backward  # ctrl-r
bindkey "^F"      history-incremental-search-forward   # ctrl-f
bindkey "^A"      beginning-of-line                    # ctrl-a
bindkey "^E"      end-of-line                          # ctrl-e
bindkey "^J"      history-search-forward               # down arrow mapped to ctrl-j
bindkey "^K"      history-search-backward              # up arrow mapped to ctrl-k
bindkey "¬"       vi-cmd-mode                          # maps to escape to go to normal mode Option-l
bindkey ";;"      vi-cmd-mode                          # maps to escape to go to normal mode

