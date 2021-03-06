class DashboardController < ApplicationController
  def index
    @user = current_user
    @favorites = FavoritesFacade.favorites_list(current_user[:id])

    if params[:selected_city]
      selected_city_name = params[:selected_city]
      @selected_city = @favorites.find do |favorite|
        favorite.city_name == selected_city_name
      end
    end
    # binding.pry
  end

  def create
    FavoritesFacade.add_favorites(current_user[:id], params[:city_id])
    redirect_to dashboard_index_path
  end

  def destroy
    FavoritesFacade.delete_favorite_city(params[:id])
    flash[:notice] = "Favorite city has been deleted"
    redirect_to dashboard_index_path
  end
end
