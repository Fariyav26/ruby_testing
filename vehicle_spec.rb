require 'rspec'
require_relative 'vehicle'

# Story: As a programmer, I can make a vehicle.
# Hint: Test that Vehicle.new does not raise any errors.

describe Vehicle do
  it "exists" do
    # curly brackets because holds the explotion if it breaks.
    # use "Vehicle.new" because we are defining it as a real object.
    expect{Vehicle.new 2013}.to_not raise_error
  end

  it "will honk" do
    # we must create a variable of the real object defined above
    v = Vehicle.new 2011
    expect(v.honk).to be_a String
  end

  it "will have a model year" do
    v = Vehicle.new 2013
    expect(v.year).to be_a Numeric
  end

end

# Story: As a programmer, I can honk the horn.
# Hint: When I call honk_horn, I get a "BEEP!".
