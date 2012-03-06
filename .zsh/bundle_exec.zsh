BUNDLED_COMMANDS=(rails rake rspec ruby sass sass-convert spec spork cucumber testdrb cap)

is-bundler-installed()
{
  which bundle > /dev/null 2>&1
}

is-within-bundled-project()
{
  local dir="$(pwd)"
  while [ "$(dirname $dir)" != "/" ]; do
    [ -f "$dir/Gemfile" ] && return
    dir="$(dirname $dir)"
  done
  false
}

run-with-bundler()
{
  if is-bundler-installed && is-within-bundled-project; then
    bundle exec $@
  else
    $@
  fi
}

for CMD in $BUNDLED_COMMANDS; do
  alias $CMD="run-with-bundler $CMD"
done
