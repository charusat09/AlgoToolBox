class MaxProfitOfShares
	attr_reader :prises

	def initialize(prises)
		@prises = prises
	end

	def calculate
		max = max_of(prises)
		min = min_of(prises)

		if prises.index(max) > prises.index(min)
			return max - min
		else
			prises_1 = prises[0..prises.index(max)]
			prises_2 = prises[prises.index(max)+1..prises.length]
			prises_1_min = min_of(prises_1)
			prises_2_max = max_of(prises_2)
			profit_1 = max - prises_1_min
			profit_2 = prises_2_max - min
			(profit_1 > profit_2) ? profit_1 : profit_2
		end
	end

	private

	def max_of(array)
		tmp = array[0]
		for i in array
			if tmp < i
				tmp = i
			end
		end
		tmp
	end

	def min_of(array)
		tmp = array[0]
		for i in array
			if tmp > i
				tmp = i
			end
		end
		tmp
	end
end