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

end
