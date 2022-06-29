require "./utils/statistics"

stat = Utils::Statistics.new

arr = [1, 2]
puts "Sum: #{stat.sum(arr)}"
puts "Max: #{stat.max(arr)}"
puts "Min: #{stat.min(arr)}"
puts "Range: #{stat.range(arr)}"
puts "Median: #{stat.median(arr)}"
puts "Mean: #{stat.mean(arr)}"
puts "Mode: #{stat.mode(arr)}"
puts stat.check_empty(arr)