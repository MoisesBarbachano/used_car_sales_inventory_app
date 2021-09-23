class CarsController < ApplicationController
  def index
    @dealership = current_user.dealership
    @cars = @dealership.cars
  end

  def create
    dealership = current_user.dealership
    car = Car.new(car_params)
    car.dealership = dealership

    redirect_to(cars_url) if car.save
  end

  def destroy
    redirect_to(cars_url) if Car.find(params[:id]).destroy
  end

  private
    def car_params
      params.require(:car).permit(:name, :price, :condition)
    end
end
