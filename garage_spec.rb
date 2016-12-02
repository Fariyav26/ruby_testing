require 'rspec'
require_relative 'garage'

describe Garage do

  it "can be real" do
    expect{Garage.new}.to_not raise_error
  end

  it "should be empty when we first create it" do
    g = Garage.new
    expect(g.spots.length).to eq 0
  end

  it "should be able to park car" do
    # make a new garage
    g = Garage.new

    # garage is empty
    expect(g.spots.length).to eq 0

    # make a new car
    c = Car.new 2016

    # park new car
    g.park(c)

    # car is parked in garage
    expect(g.spots.length).to eq 1
  end

  it "should be able to see how many spots are taken" do
    #make a new garage
    g = Garage.new

    # make two cars
    c1 = Car.new 2017
    c2 = Car.new 2016

    # we want to park the cars
    g.park(c1) # parked first car
    g.park(c2) # parked second car

    # check how many spots are taken
    expect(g.spots.length).to eq 2
  end

  it "should sort cars based by model year" do
    #make a new garage
    g = Garage.new

    # make cars so we can sort them by year
    c1 = Tata.new 2017
    c2 = Tesla.new 2014
    c3 = Toyota.new 2021
    c4 = Tesla.new 2010
    c5 = Tata.new 2003

    # park the cars
    g.park(c1) # parked first car
    g.park(c2) # parked second car
    g.park(c3) # parked third car
    g.park(c4) # parked fourth car
    g.park(c5) # parked fifth car

    # before cars are sorted...
    # - the first car should be a 2017
    # - the last car should be 2003
    expect(g.spots[0].year).to eq 2017
    expect(g.spots[-1].year).to eq 2003

    # sort by model year
    g.spots = g.spots.sort{ |x,y| y.year <=> x.year }.reverse

    # after cars are sorted...
    # - the first car should be a 2003
    # - the last car should be 2021
    expect(g.spots[0].year).to eq 2003
    expect(g.spots[-1].year).to eq 2021
  end

  it "should sort cars based by model name" do
    #make a new garage
    g = Garage.new

    # make cars so we can sort them by model name
    c1 = Tata.new 2017
    c2 = Tesla.new 2014
    c3 = Toyota.new 2021
    c4 = Tesla.new 2010
    c5 = Tata.new 2003

    # park the cars
    g.park(c1) # parked first car
    g.park(c2) # parked second car
    g.park(c3) # parked third car
    g.park(c4) # parked fourth car
    g.park(c5) # parked fifth car

    # before cars are sorted...
    # - the first car should be a Tata
    # - the last car should be Tata
    expect(g.spots[0]).to be_a Tata
    expect(g.spots[-1]).to be_a Tata

    # sort by model year
    g.spots = g.spots.sort{ |x,y| y.class.to_s <=> x.class.to_s }.reverse

    # after cars are sorted...
    # - the first car should be a Tata
    # - the last car should be Toyota
    expect(g.spots[0]).to be_a Tata
    expect(g.spots[-1]).to be_a Toyota
  end

  it "should sort cars based by model name and model year" do
    #make a new garage
    g = Garage.new

    # make cars so we can sort them by model name
    c1 = Tata.new 2017
    c2 = Tesla.new 2014
    c3 = Toyota.new 2021
    c4 = Tesla.new 2010
    c5 = Tata.new 2003

    # park the cars
    g.park(c1) # parked first car
    g.park(c2) # parked second car
    g.park(c3) # parked third car
    g.park(c4) # parked fourth car
    g.park(c5) # parked fifth car

    # before cars are sorted...
    # - the first car should be a Tata 2017
    # - the last car should be Tata 2003
    expect(g.spots[0]).to be_a Tata
    expect(g.spots[0].year).to eq 2017
    expect(g.spots[-1]).to be_a Tata
    expect(g.spots[-1].year).to eq 2003

    # sort by model name and year
    g.spots = g.spots.sort{|x,y| [y.class.to_s, y.year] <=> [x.class.to_s, x.year] }.reverse

    # after cars are sorted...
    # - the first car should be a Tata 2003
    # - the last car should be Toyota 2021
    expect(g.spots[0]).to be_a Tata
    expect(g.spots[0].year).to eq 2003
    expect(g.spots[-1]).to be_a Toyota
    expect(g.spots[-1].year).to eq 2021
  end

end
