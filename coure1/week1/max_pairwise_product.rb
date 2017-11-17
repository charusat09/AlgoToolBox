require 'benchmark'

class MaxPairwiseProduct
	attr_accessor :array

	def initialize(array)
		@array = array
	end

	def max_number1
		max1 = 0
		index = 0
		array.each do |a|
			if a > max1
				max1 = a
				index = array.index(a)
			end
		end
		array[index] = -1
		max1
	end

	def max_number2
		max2 = 0
		array.each do |a|
			if a > max2
				max2 = a
			end
		end
		max2
	end

	def max_pair_wise_product
		max1 = max_number1
		max2 = max_number2
		max1 * max2
	end
end



# Benchmark.bm do |x|
# 	x.report("MaxPairwiseProduct:") do 
# 		MaxPairwiseProduct.new(array).max_pair_wise_product
# 	end
# end
