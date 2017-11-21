class Gcd
	attr_reader :num1, :num2

	def initialize(a, b)
		@num1 = a
		@num2 = b
	end

	def calculate
		gcd(num1, num2)
	end

	private

	def gcd(a, b)
		return a if b == 0
		c = a % b
		gcd(b,c)
	end
end
