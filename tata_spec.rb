require 'rspec'
require_relative 'tata'

describe Tata do

  it "can be real" do
    expect{Tata.new 2015}.to_not raise_error
  end

  it "can beep" do
    ta = Tata.new 2019
    expect(ta.honk).to eq "beep"
  end

  it "can accelerate by 2km/h" do
    ta = Tata.new 2014
    expect(ta.accelerate).to be_a Numeric
  end

  it "can brake by 1.25 km/h" do
    ta = Tata.new 2014
    expect(ta.brake).to be_a Numeric
  end

  it "can provide all info" do
    ta = Tata.new 2019
    expect(ta.info).to eq "the car will beep,it's model year is 2019, the lights are at a default false, the signal is off, and the speed starts at 0"
  end

end
