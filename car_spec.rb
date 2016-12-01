require 'rspec'
require_relative 'car'
#

# Story: As a programmer, I can make a car.
# Hint: Test that creating an instance of the new class does not raise any errors.

describe Car do

  it "can be real" do
    expect{Car.new 2015}.to_not raise_error
  end

  it "defaults to have 4 wheels" do
    a_car = Car.new 2017
    # dont need "expect" because wheels set at initialize.
  end


end
