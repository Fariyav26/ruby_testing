require 'rspec'
require_relative 'tata'

describe Tata do

  it "can be real" do
    expect{Tata.new}.to_not raise_error
  end

  it "can beep" do
    ta = Tata.new
    expect(ta.honk).to eq "beep"
  end

end
