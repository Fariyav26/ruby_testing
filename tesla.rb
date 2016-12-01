require_relative 'car'

class Tesla < Car

  def initialize(year)
    super
    @honk = "Beep-bee-bee-boop-bee-doo-weep"
  end

end
