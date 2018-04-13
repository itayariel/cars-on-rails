class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def new
  end

  def show
    @car = Car.find(params[:id])
  end

  def create
    @car = Car.new(car_params)
  	@car.save
  	redirect_to @car
  end

  private
    def car_params
      params.require(:car).permit(:title, :description, :image)
    end

end
