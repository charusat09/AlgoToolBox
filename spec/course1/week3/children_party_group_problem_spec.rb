require "./coure1/week3/children_party_group_problem.rb"

RSpec.describe ChildrenPartyGroupProblem, "#calculate" do 
	context "calculate optimal group number" do
		it "set#1" do
			ages = [1, 1.5, 2.2, 3.8, 4, 5.3, 6]
			expect(
				ChildrenPartyGroupProblem.new(ages).calculate
			).to eq(4)
		end

		it "set#2" do
			ages = [1, 1.5, 2, 2.2, 3.8, 4, 5.3, 6, 6.5]
			expect(
				ChildrenPartyGroupProblem.new(ages).calculate
			).to eq(5)
		end
	end
end
