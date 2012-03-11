# Cache rake completion

_rake_does_task_list_need_generating () {
  if [ ! -f tmp/cached_rake_tasks ]; then return 0;
  else
    accurate=$(stat -f%m tmp/cached_rake_tasks)
    changed=$(stat -f%m Rakefile)
    return $(expr $accurate '>=' $changed)
  fi
}

_rake () {
  if [ -f Rakefile ]; then
    if _rake_does_task_list_need_generating; then
      echo "\nGenerating tmp/cached_rake_tasks..." > /dev/stderr
      rake --silent --tasks | cut -d " " -f 2 > tmp/cached_rake_tasks
    fi
    compadd `cat tmp/cached_rake_tasks`
  fi
}

compdef _rake rake
