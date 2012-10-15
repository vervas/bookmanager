# lib/execute_rake_task.rb
if ARGV.size != 1
  puts "[ERROR] expects exactly one string argument"
  exit
end

%x/ rake #{ ARGV.first } /
