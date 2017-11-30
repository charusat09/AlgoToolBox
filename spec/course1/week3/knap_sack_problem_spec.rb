require "./coure1/week3/knap_sack_problem.rb"

RSpec.describe Knapsack, "#calculate" do
	context "resolves knap sack problem" do
		it "set#1" do
			prise = [280, 100, 120, 120]
			weight = [40, 10, 20, 24]
			capacity = 60
			expect(
				Knapsack.new(prise, weight, capacity).calculate
			).to eq(440)
		end

		it "set#2" do
			prise = [280, 100, 120, 120]
			weight = [40, 10, 20, 24]
			capacity = 15
			expect(
				Knapsack.new(prise, weight, capacity).calculate
			).to eq(345)
		end

		it "set#3" do
			prise = [280, 100, 120, 120]
			weight = [40, 10, 20, 24]
			capacity = 5
			expect(
				Knapsack.new(prise, weight, capacity).calculate
			).to eq(50)
		end
	end
end