require "./coure1/week3/max_profit_of_shares_interview_cake.rb"

RSpec.describe MaxProfitOfShares, "#calculate" do 
	context "calculate max profit" do
		it "set#1" do
			prises = [10,7,5,8,11,1,9]
			expect(
				MaxProfitOfShares.new(prises).calculate
			).to eq(8)
		end

		it "set#2" do
			prises = [10,7,5,8,11,8,9]
			expect(
				MaxProfitOfShares.new(prises).calculate
			).to eq(6)
		end
	end
end