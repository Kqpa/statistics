module Utils
	
	# @brief    Statistics class utility for the Ruby language
	# @author   Kqpa
	# @methods  sum([Array]),
	#			max([Array]),
	#			min([Array]),
	#			range([Array]),
	#			median([Array]),
	#			mode([Array]),
	#			mean([Array]),
	#			[Private] check_empty([Array])
	
	class Statistics
		
		# @brief Calculates the sum of all the numbers in the given array
		# @param nums [Array] The array of numbers
		# @return [Float | Int] The sum of all the numbers in the array

		def sum(nums)
			check_empty(nums)
			sum = 0
			nums.each do |num|
				sum += num
			end
			return sum
		end

		# @brief Calculates the maximum value of the given array
		# @param nums [Array] The array of numbers
		# @return [Float | Int] The maximum value in the array

		def max(nums)
			check_empty(nums)
			max = nums[0]
			nums.each do |num|
				max = num if num > max
			end
			return max
		end

		# @brief Calculates the minimum value of the given array
		# @param nums [Array] The array of numbers
		# @return [Float | Int] The minimum value in the array

		def min(nums)
			check_empty(nums)
			min = nums[0]
			nums.each do |num|
				min = num if num < min
			end
			return min
		end

		# @brief Calculates the range of the given array
		# @param nums [Array] The array of numbers
		# @return [Float | Int] The range of the array

		def range(nums)
			check_empty(nums)
			return nums.max - nums.min
		end

		# @brief Calculates the median of the given array
		# @param nums [Array] The array of numbers
		# @return [Float | Int] The median of the array

		def median(nums)
			check_empty(nums)
			nums.sort!
			if nums.length.even?
				return (nums[nums.length / 2] + nums[nums.length / 2 - 1]) / 2
			else
				return nums[nums.length / 2]
			end
		end

		# @brief Calculates the mode of the given array
		# @param nums [Array] The array of numbers
		# @return [Float | Int] The mode of the array

		def mode(nums)
			check_empty(nums)
			mode = 0
			count = 0
			nums.each do |num|
				if nums.count(num) > count
					mode = num
					count = nums.count(num)
				end
			end
			return mode
		end

		# @brief Calculates the mean (average) of the given array
		# @param nums [Array] The array of numbers
		# @return [Float | Int] The mode of the array

		def mean(nums)
			check_empty(nums)
			return nums.sum / nums.length
		end
 
		# @brief Checks if the given array is empty
		# @param nums [Array] The array of numbers
		# @return [Raise] If the array is empty, raise an exception
		private def check_empty(arr)
			return raise ArgumentError, "Array is empty" if arr.empty?
		end

	end
	
end
