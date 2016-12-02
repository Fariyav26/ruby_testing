require_relative 'car'

class Tesla < Car

  def initialize(year)
    super
    @honk = "Beep-bee-bee-boop-bee-doo-weep"
  end

  def accelerate
    @speed += 10
  end

  def brake
    @speed -= 7
  end

end
