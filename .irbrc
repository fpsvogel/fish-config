IRB.conf[:COMMAND_ALIASES][:c] = :continue

def cp
  IO.popen("pbcopy", "w") { |cb| cb.write(Reline::HISTORY[-2]) }
end
