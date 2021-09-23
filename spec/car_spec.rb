require 'rails_helper'

describe Car do 
  dealership = Dealership.new(name: 'Test Dealership')
  name = 'Test car'
  price = 1000.00
  it "name must not be empty" do
    car = Car.new(price: price, condition: :used, dealership: dealership)
    car.save
    expect(Car.count).to eq(0)
  end
  it "price must not be empty" do
    car = Car.new(name: name, condition: :used, dealership: dealership)
    car.save
    expect(Car.count).to eq(0)
  end
  it "dealership association must not be empty" do
    car = Car.new(name: name, price: price, condition: :used)
    car.save
    expect(Car.count).to eq(0)
  end
  it "price must not be less than 0" do
    car = Car.new(name: 'Test Car', price: -1000.00, condition: :used, dealership: dealership)
    car.save
    expect(Car.count).to eq(0)
  end
end