class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def show
  	@restaurant = Restaurant.find(params[:id])
  end

  def index
  	@Restaurants = Restaurant.all
  end

  def create
  	restaurant = Restaurant.create(params.require(:restaurant).permit(:name, :address, :phone_number, :description))
  	redirect_to  restaurant 
  end

end
