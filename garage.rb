require_relative 'tata'
require_relative 'tesla'
require_relative 'toyota'

class Garage

  def initialize
    @spots = [] #it starts with a blank array
  end

  def spots=(spots)
    @spots = spots
  end

  def spots
    @spots
  end

  def park(car)
    @spots << car #this is what we use to add a car in the array
  end

end #end of class Garage
