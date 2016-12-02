class Vehicle

  def initialize(year)
    @honk = "beep"
    @year = year
    @lights = false
    @signal = "off"
    @speed = 0
  end

  def honk
    @honk
  end

  # above we are getting the beep. gets set in initilization. no need to set here.
  def year
    @year
  end

  def lights
    @lights
  end

  def lights=(lights)
    @lights = lights
  end

  def lights_on
    @lights
  end

  def signal
    @signal
  end

  def set_signal
    if @signal == "off"
      @signal = "left"

    elsif @signal == "left"
      @signal = "right"

    else @signal
      @signal = "off"

    end

  end #end of if statement

  def speed
    @speed
  end



end # ends vehicle class
