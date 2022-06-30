module Utils

	# @brief  Statistics class utility for the Ruby language
	# @author Kqpa
	# @methods
	#	[Public]  sum([Array]),
	#	[Public]  max([Array]),
	#	[Public]  min([Array]),
	#	[Public]  range([Array]),
	#	[Public]  median([Array]),
	#	[Public]  mode([Array]),
	#	[Public]  mean([Array]),
	#	[Private] check_empty([Array])
	
	class Statistics
		
		# @brief Calculates the sum of all the numbers in the given array
		# @param nums [Array(Float | Int)] The array of numbers
		# @return [Float | Int] The sum of all the numbers in the array

		public def sum(nums)
			check_empty(nums)
			sum = 0
			nums.each do |num|
				sum += num
			end
			return sum
		end

		# @brief Calculates the maximum value of the given array
		# @param nums [Array(Float | Int)] The array of numbers
		# @return [Float | Int] The maximum value in the array

		public def max(nums)
			check_empty(nums)
			max = nums[0]
			nums.each do |num|
				max = num if num > max
			end
			return max
		end

		# @brief Calculates the minimum value of the given array
		# @param nums [Array(Float | Int)] The array of numbers
		# @return [Float | Int] The minimum value in the array

		public def min(nums)
			check_empty(nums)
			min = nums[0]
			nums.each do |num|
				min = num if num < min
			end
			return min
		end

		# @brief Calculates the range of the given array
		# @param nums [Array(Float | Int)] The array of numbers
		# @return [Float | Int] The range of the array

		public def range(nums)
			check_empty(nums)
			return nums.max - nums.min
		end

		# @brief Calculates the median of the given array
		# @param nums [Array(Float | Int)] The array of numbers
		# @return [Float | Int] The median of the array

		public def median(nums)
			check_empty(nums)
			nums.sort!
			if nums.length.even?
				return (nums[nums.length / 2] + nums[nums.length / 2 - 1]) / 2
			else
				return nums[nums.length / 2]
			end
		end

		# @brief Calculates the mode of the given array
		# @param nums [Array(Float | Int)] The array of numbers
		# @return Array[(Float | Int)] Array of mode(s) of the array

		public def mode(nums)
			counts = Hash.new(0)
			modes = []
			nums.each do |num|
				if counts.has_key?(num)
					counts[num] += 1
				else
					counts[num] = 1
				end
			end
			counts.keys.each do |num|
				if counts[num] == counts.values.max
					modes.push(num)
				end
			end
			return modes
		end

		# @brief Calculates the mean (average) of the given array
		# @param nums [Array(Float | Int)] The array of numbers
		# @return [Float | Int] The mode of the array

		public def mean(nums)
			check_empty(nums)
			return nums.sum / nums.length
		end
 
		# @brief Checks if the given array is empty
		# @param nums [Array(Float | Int)] The array of numbers
		# @return [Raise] If the array is empty, raise an exception
		private def check_empty(arr)
			return raise ArgumentError, "Array cannot be empty" if arr.empty?
		end

	end
	
end
