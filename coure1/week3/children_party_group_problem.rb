class ChildrenPartyGroupProblem
  attr_reader :ages

  def initialize(ages)
    @ages = ages
  end

  def calculate
    counter = 1
    first = ages[0]
    for i in ages
      num = first + 1
      if i > num
        counter += 1
        first = i
      end
    end
    counter 
  end
end
