class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.order("created_at DESC") 
  end

  def new
    @restaurant_address = RestaurantAddress.new
  end

  def create
    @restaurant_address = RestaurantAddress.new(restaurant_params)
    if @restaurant_address.valid?
       @restaurant_address.save
       redirect_to root_path
    else
       render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @addresses = @address.restaurant
  end

  private
  def restaurant_params
    params.require(:restaurant_address).permit(:image, :restaurant_name, :genre_id, :comment_id, :prefecture_id, :city)
  end
end
