function git_status_prompt() {
  local gitst="$(git status 2> /dev/null)"
  if [[ -f .git/MERGE_HEAD ]]; then
    if [[ ${gitst} =~ "unmerged" ]]; then
      echo " %{$fg[red]%}unmerged%{$reset_color%}"
    else
      echo " %{$fg[cyan]%}merged%{$reset_color%}"
    fi
  elif [[ ${gitst} =~ "Changes to be committed" ]]; then
    echo " %{$fg[blue]%}!%{$reset_color%}"
  elif [[ ${gitst} =~ "use \"git add" ]]; then
    echo " %{$fg[red]%}!%{$reset_color%}"
  # elif [[ -n `git checkout HEAD 2> /dev/null | grep ahead` ]]; then
  #   echo " %{$fg[yellow]%}*%{$reset_color%}"
  else
    echo ''
  fi
}

function pair_prompt {
  local pairname=$(git config --get user.initials)
  if [[ (${pairname} == 'do') || ( ${pairname} == '') ]]; then
    echo ''
  else
    echo " ($pairname)"
  fi
}

function git_branch_prompt () {
  if which git > /dev/null; then
    local g="$(git rev-parse --git-dir 2>/dev/null)"
    if [ -n "$g" ]; then

      local r
      local b
      if [ -d "$g/rebase-apply" ]; then
        if test -f "$g/rebase-apply/rebasing"; then
          r="|REBASE"
        elif test -f "$g/rebase-apply/applying"; then
          r="|AM"
        else
          r="|AM/REBASE"
        fi
        b="$(git symbolic-ref HEAD 2>/dev/null)"
      elif [ -f "$g/rebase-merge/interactive" ]; then
        r="|REBASE-i"
        b="$(cat "$g/rebase-merge/head-name")"
      elif [ -d "$g/rebase-merge" ]; then
        r="|REBASE-m"
        b="$(cat "$g/rebase-merge/head-name")"
      elif [ -f "$g/MERGE_HEAD" ]; then
        r="|MERGING"
        b="$(git symbolic-ref HEAD 2>/dev/null)"
      else
        if [ -f "$g/BISECT_LOG" ]; then
          r="|BISECTING"
        fi
        if ! b="$(git symbolic-ref HEAD 2>/dev/null)"; then
          if ! b="$(git describe --exact-match HEAD 2>/dev/null)"; then
            b="$(cut -c1-7 "$g/HEAD")..."
          fi
        fi
      fi

      echo " %{$fg[yellow]%}${b##refs/heads/}$r%{$reset_color%}"
    fi
  else
    echo ''
  fi
}

function dir_prompt {
  echo "[ %{$fg[cyan]%~%<< ${reset_color}]"
}


PROMPT='$(dir_prompt)$(git_branch_prompt)$(git_status_prompt)$(pair_prompt) > '

