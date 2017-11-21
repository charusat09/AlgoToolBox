class Fibonacci
	attr_reader :number

	def initialize(n)
		@number = n.to_i
	end

	def calculate
		numbers = [0,1]
		for i in 2..number
			numbers[i] = numbers[i-1] + numbers[i-2]
		end
		numbers[number-1]
	end
end