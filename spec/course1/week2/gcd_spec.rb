require "./coure1/week2/gcd.rb"

RSpec.describe Gcd, "#calculate" do
	context "calculate GCD for" do
		it "given numbers" do
			expect(
				Gcd.new(4,12).calculate
			).to eq(4)
		end

		it "given large numbers" do
			expect(
				Gcd.new(152364582,124856921).calculate
			).to eq(1)
		end
	end
end