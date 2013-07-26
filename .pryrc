load '~/.railsrc' if ($0 == 'pry' && ENV['RAILS_ENV']) || defined?(Rails)

Pry.commands.alias_command 'c', 'continue'
Pry.commands.alias_command 's', 'step'
Pry.commands.alias_command 'n', 'next'
Pry.commands.alias_command 'f', 'finish'
Pry.commands.alias_command 'w', 'whereami'
