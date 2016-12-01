require 'rspec'
require_relative 'toyota'

describe Toyota do

  it "can be real" do
    expect{Toyota.new}.to_not raise_error
  end

  it "can whoop" do
    t = Toyota.new
    expect(t.honk).to be_a String
    expect(t.honk).to eq "whoop"
  end
end
