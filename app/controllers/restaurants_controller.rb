class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new # display the form
    @restaurant = Restaurant.new
  end

  def create # to post the form (send the form) => no view!!
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new # refers to new.html.erb
    end
  end

  def edit # display the form
  end

  def update # to patch the form (send the form) => no view!!
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit # => edit.html.erb
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path # index
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params # whitelisting the params
    # by default nothing is permitted
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
