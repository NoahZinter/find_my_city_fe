class SessionsController < ApplicationController

  def create
    if params[:email].empty? || params[:password].empty?
      flash[:error] = "Must fill out email & password fields"
      redirect_to root_path
    else
      params["email"] = params["email"].downcase
      user = UserService.get_user(params[:email], params[:password])
      session[:user_id] = user[:data][:attributes][:id]
      session[:email] = user[:data][:attributes][:email]
      redirect_to dashboard_index_path
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
