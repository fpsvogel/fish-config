IRB.conf[:COMMAND_ALIASES][:c] = :continue

# Copy last input to clipboard
def pi
  IO.popen("pbcopy", "w") { |cb| cb.write(Reline::HISTORY[-2]) }
end

# Copy last output to clipboard
def po
  IO.popen("pbcopy", "w") { |cb| cb.write(_) }
end
