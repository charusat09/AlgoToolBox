class Knapsack
	attr_reader :prise, :weight, :capacity

	def initialize(prise, weight, capacity)
		@prise = prise
		@weight = weight
		@capacity = capacity
	end

	def calculate
		cap = capacity
		input_hash = convert_input_to_hash(prise, weight)
		sorted_input = sort(input_hash)
		profit = 0
		sorted_input.each do |input|
			if cap > input[:weight]
				cap -= input[:weight]
				profit += input[:weight] * input[:unit]
			elsif cap > 0 && cap < input[:weight]
				rem = input[:weight] - cap
				cap -= rem
				profit += rem * input[:unit]
			end
		end
		profit
	end

	private

	def convert_input_to_hash(prise, weight)
		tmp = []
		(0..prise.length-1).each do |i|
			unit = prise[i] / weight[i]
			tmp << { prise: prise[i], weight: weight[i], unit: unit }
		end
		tmp
	end

	def sort(input_hash)
		# ToDO: sort this without using in built methods
		input_hash.sort_by {|hash| hash[:unit]}.reverse
	end
end