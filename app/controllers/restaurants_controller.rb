class RestaurantsController < ApplicationController
  def index
    if params[:tag].present?
      @restaurants = Restaurant.tagged_with(params[:tag])
    else
      @restaurants = Restaurant.all
    end

    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = current_user

    if @restaurant.save
      redirect_to root_path
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, tag_list: [])
  end
end
