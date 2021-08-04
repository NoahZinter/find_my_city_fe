class DashboardController < ApplicationController
  def show
    @user = current_user
    # @city = City.find(params[:city_id]) - city passed from view need to pry

    # @favorites =  FavoritesFacade.favorites(@current_user.id, @city.id)
  end
end
