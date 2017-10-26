# ===== Basics

# If you type foo, and it isn't a command, and it is a directory in your cdpath, go there
setopt AUTO_CD

# Help us out with basic spelling correction for commands
# setopt CORRECT

# cd does a pushd which lets you do a popd without having to think about it before you need it.
setopt AUTOPUSHD


# ===== History

# Allow multiple terminal sessions to all append to one zsh command history
setopt APPEND_HISTORY

# Add comamnds as they are typed, don't wait until shell exit
setopt INC_APPEND_HISTORY

# If a new command line duplicates an older one, the older command is removed from the history
setopt HIST_IGNORE_ALL_DUPS

# When searching history don't display results already cycled through twice
setopt HIST_FIND_NO_DUPS

# Remove extra blanks from each command line being added to history
setopt HIST_REDUCE_BLANKS

# Include more information about when the command was executed, etc
setopt EXTENDED_HISTORY

# Enables real-time sharing of history across terminal sessions
setopt SHARE_HISTORY



# ===== Completion

# Allow completion from within a word/phrase
setopt COMPLETE_IN_WORD

# When completing from the middle of a word, move the cursor to the end of the word
setopt ALWAYS_TO_END



# ===== Prompt

# Enable parameter expansion, command substitution, and arithmetic expansion in the prompt
setopt PROMPT_SUBST
