module Utils
  # @brief    Statistics class utility for the Ruby language
  # @author   Kqpa
  # @methods  sum([Array]),
  #           max([Array]),
  #           min([Array]),
  #           range([Array]),
  #           median([Array]),
  #           mode([Array]),
  #           mean([Array])

  class Statistics
    # @brief Calculates the sum of all the numbers in the given array
    # @param nums [Array] The array of numbers
    # @return [Float | Int] The sum of all the numbers in the array

    def sum(nums)
      sum = 0
      nums.each do |num|
        sum += num
      end
      sum
    end

    # @brief Calculates the maximum value of the given array
    # @param nums [Array] The array of numbers
    # @return [Float | Int] The maximum value in the array

    def max(nums)
      max = nums[0]
      nums.each do |num|
        max = num if num > max
      end
      max
    end

    # @brief Calculates the minimum value of the given array
    # @param nums [Array] The array of numbers
    # @return [Float | Int] The minimum value in the array

    def min(nums)
      min = nums[0]
      nums.each do |num|
        min = num if num < min
      end
      min
    end

    # @brief Calculates the range of the given array
    # @param nums [Array] The array of numbers
    # @return [Float | Int] The range of the array

    def range(nums)
      # easier to read than max(nums) - min(nums) and maybe faster
      nums.max - nums.min
    end

    # @brief Calculates the median of the given array
    # @param nums [Array] The array of numbers
    # @return [Float | Int] The median of the array

    def median(nums)
      nums.sort!
      if nums.length.even?
        (nums[nums.length / 2] + nums[nums.length / 2 - 1]) / 2
      else
        nums[nums.length / 2]
      end
    end

    # @brief Calculates the mode of the given array
    # @param nums [Array] The array of numbers
    # @return [Float | Int] The mode of the array

    def mode(nums)
      mode = 0
      count = 0
      nums.each do |num|
        if nums.count(num) > count
          mode = num
          count = nums.count(num)
        end
      end
      mode
    end

    # @brief Calculates the mean (average) of the given array
    # @param nums [Array] The array of numbers
    # @return [Float | Int] The mode of the array

    def mean(nums)
      return "can't divide by zero" if nums.empty?

      sum(nums) / nums.length
    end
  end
end
