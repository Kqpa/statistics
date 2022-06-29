<div align="center">

# Statistics
Statistics is a Ruby library that provides statistical tools, such as calculating the median of a given sets of numbers and actions similar to that. Follow the documentation below to get started.

</div>

# Installation

```sh
git clone 'https://github.com/Kqpa/statistics.git'
mv './statistics/utils/statistics.rb' '~/YourProject/lib'
```

# Features

Firstly, create an instance of the `Statistics` class by adding this following code block to your source code:

```rb
require "./lib/utils/statistics"
stats = Utils::Statistics.new
```

Then, you can use the following methods:

* **Calculate the sum of a set of numbers**

```rb
puts "Sum: #{stats.sum([1, 2, 3, 4, 5])}"
# => Sum: 15
```

* **Calculate the maximum number in a set of numbers**

```rb
puts "Max: #{stats.max([1, 2, 3, 4, 5])}"
# => Max: 5
```

* **Calculate the minimum number in a set of numbers**

```rb
puts "Min: #{stats.min([1, 2, 3, 4, 5])}"
# => Min: 1
```

* **Calculate the range of a set of numbers**

```rb
puts "Range: #{stats.range([1, 2, 3, 4, 5])}"
# => Range: 4
```

* **Calculate the median of a set of numbers**

```rb
puts "Median: #{stats.median([1, 2, 3, 4, 5])}"
# => Median: 3
```

* **Calculate the mean of a set of numbers**

```rb
puts "Mean: #{stats.mean([1, 2, 3, 4, 5])}"
# => Mean: 3
```

* **Calculates the mode of a set of numbers**

```rb
puts "Mode: #{stats.mode([1, 2, 3, 3, 3, 2, 2])}"

```
