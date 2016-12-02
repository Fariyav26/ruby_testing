require_relative 'car'

class Tata < Car

  def initialize(year)
    super
  end

  def accelerate
    @speed += 2
  end

  def brake
    @speed -= 1.25
  end


end #end of Tata class
