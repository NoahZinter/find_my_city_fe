class FavoritesController < ApplicationController
  def create
    require 'pry'; binding.pry
    city = City.find(params["city_id"])
    favorites = Favorite.find_or_create_by(city_id: city.id, user_id: current_user.id)
    redirect_to '/dashboard'
  end

  def destroy
    city = City.find(params["city_id"])
    favorite = Favorite.where("user_id = #{current_user.id} and city_id = #{city.id}")
    favorite[0].destroy
    redirect_to '/dashboard'
  end
end