Pry.commands.alias_command "c", "continue"
Pry.commands.alias_command "n", "next" # execute next line
Pry.commands.alias_command "s", "step" # step into next method call
Pry.commands.alias_command "f", "finish" # finish current frame (e.g. method)
Pry.commands.alias_command "v", "ls -l" # show local vars
Pry.commands.alias_command "i", "ls -i" # show ivars
Pry.commands.alias_command "t", "backtrace"
Pry.commands.alias_command "u", "up" # move up call stack
Pry.commands.alias_command "d", "down" # move down call stack
Pry.commands.alias_command "r", "reload-code" # reload current file, or given file; only works in .rb files (not ERB), and doesn't reload the currently-executing method
Pry.commands.alias_command "q", "exit"
# Pry.commands.alias_command "w", "whereami" # unnecessary because @ shows whereami

Pry::Commands.block_command "cp", "Copy last command to clipboard" do
  IO.popen("pbcopy", "w") { |cb| cb.write(pry_instance.input_array.last) }
end
