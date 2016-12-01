require_relative 'vehicle'
# we have to use reqire from vehicle(parent) to link files together.

class Car < Vehicle

  def initialize(year)
    super
    @wheels = 4
  end

  # Story: As a programmer, I can tell how many wheels a car has; default is four.
  # Hint: initialize the car to have four wheels, then create a method to return the number of wheels


  def wheels
    @wheels
  end

end
