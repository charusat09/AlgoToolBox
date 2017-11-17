require "./coure1/week1/max_pairwise_product.rb"

RSpec.describe MaxPairwiseProduct, "#max_pair_wise_product" do
	context "finds max pair wise product for" do
		it "small numbers" do
			array = [11,2,9,4,10,6,7,8,9,10]
			expect(
				MaxPairwiseProduct.new(array).max_pair_wise_product
			).to eq(110)
		end

		it "large numbers" do
			array = [100000, 500000]
			expect(
				MaxPairwiseProduct.new(array).max_pair_wise_product
			).to eq(50000000000)
		end

		it "very large data set" do
			N = 100000
			array = []
			N.times {|n| array.push(Random.new.rand(1000))}
			max_numbers = array.max(2)
			expect(
				MaxPairwiseProduct.new(array).max_pair_wise_product
			).to eq(max_numbers[0] * max_numbers[1])
		end
	end
end