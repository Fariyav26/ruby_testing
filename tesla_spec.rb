require 'rspec'
require_relative 'tesla'

describe Tesla do

  it "can be real" do
    expect{Tesla.new 2017}.to_not raise_error
  end

  it "can honk the horn" do
    te = Tesla.new 2018
    expect(te.honk).to eq "Beep-bee-bee-boop-bee-doo-weep"
  end

  it "can accelerate by 10km/h" do
    te = Tesla.new 2014
    expect(te.accelerate).to be_a Numeric
  end

  it "can brake by 7 km/h" do
    te = Tesla.new 2019
    expect(te.brake).to be_a Numeric
  end

  it "can provide all info" do
    te = Tesla.new 2019
    expect(te.info).to eq "the car will Beep-bee-bee-boop-bee-doo-weep,it's model year is 2019, the lights are at a default false, the signal is off, and the speed starts at 0"
  end

end
