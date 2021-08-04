class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    @current_user = {id: session[:user_id], email: session[:email]}
  end
end
