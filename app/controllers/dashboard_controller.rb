class DashboardController < ApplicationController
  def show
    @user = current_user
    @favorites = Favorite.where('user_id = ?', "#{@user.id}")
  end
end