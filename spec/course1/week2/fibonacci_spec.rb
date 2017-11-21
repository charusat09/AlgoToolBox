require "./coure1/week2/fibonacci.rb"

RSpec.describe Fibonacci, "#calculate" do
	context "calculate fibonacci number for" do
		it "given number" do
			expect(
				Fibonacci.new(3).calculate
			).to eq(1)
			expect(
				Fibonacci.new(14).calculate
			).to eq(233)
		end
	end
end