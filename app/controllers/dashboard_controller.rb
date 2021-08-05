class DashboardController < ApplicationController
  def index
    @user = current_user
    # binding.pry
    # @city = City.find(params[:city_id])
    # @favorites =  FavoritesFacade.favorites(@current_user.id, @city.id)
  end

end
