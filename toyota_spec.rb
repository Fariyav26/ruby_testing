require 'rspec'
require_relative 'toyota'

describe Toyota do

  it "can be real" do
    expect{Toyota.new 2015}.to_not raise_error
  end

  it "can whoop" do
    t = Toyota.new 2014
    expect(t.honk).to be_a String
    expect(t.honk).to eq "whoop"
  end

  it "can accelerate by 7km/h" do
    t = Toyota.new 2019
    expect(t.accelerate).to be_a Numeric
  end

  it "can brake by 5km/h" do
    t = Toyota.new 2019
    expect(t.brake).to be_a Numeric
  end

  it "can provide all info" do
    t = Toyota.new 2019
    expect(t.info).to eq "the car will whoop,it's model year is 2019, the lights are at a default false, the signal is off, and the speed starts at 0"
  end


end #end of Toyota class
