require "./coure1/week3/optimized_fuel_station_problem.rb"

RSpec.describe OptimizedFuelStationProblem, "#calculate" do
  context "returns optimized fuel refilling numbers" do
    it "set#1" do
      x = [0, 100, 375, 500, 750, 850, 900]
      l = 250
      expect(
        OptimizedFuelStationProblem.new(x,l).calculate
      ).to eq(3)
    end

    it "set#2" do
      x = [0, 100, 375, 500, 750, 850, 900]
      l = 400
      expect(
        OptimizedFuelStationProblem.new(x,l).calculate
      ).to eq(2)
    end
  end
end
