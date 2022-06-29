require "./utils/statistics"

stat = Utils::Statistics.new

arr = [3,2,1,4,4,5,5,5]
puts "Sum: #{stat.sum(arr)}"
puts "Max: #{stat.max(arr)}"
puts "Min: #{stat.min(arr)}"
puts "Range: #{stat.range(arr)}"
puts "Median: #{stat.median(arr)}"
puts "Mean: #{stat.mean(arr)}"
puts "Mode: #{stat.mode(arr)}"
