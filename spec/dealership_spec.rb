require 'rails_helper'

describe Dealership do 
  it "name must not be empty" do
    dealership = Dealership.new
    dealership.save
    expect(Dealership.count).to eq(0)
  end
end