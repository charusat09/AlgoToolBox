class OptimizedFuelStationProblem
  attr_reader :array
  attr_accessor :max_distance

  def initialize(array_of_stations, max_distance_travelled)
    @array = array_of_stations
    @max_distance = max_distance_travelled
  end

  def calculate
    no_of_reffilling = 0
    l = max_distance
    array.each_with_index do |x, index|
      if x > l
        l = max_distance + (l - array[index - 1]) + array[index - 1]
        no_of_reffilling += 1
      end
    end
    no_of_reffilling
  end
end
