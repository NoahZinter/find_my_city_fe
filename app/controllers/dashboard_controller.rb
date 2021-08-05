class DashboardController < ApplicationController
  def index
    @favorites =  FavoritesFacade.favorites(current_user[:id], params[:city_id])
  end

end
