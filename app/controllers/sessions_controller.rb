class SessionsController < ApplicationController

  def create
    params["email"] = params["email"].downcase
    user = UserService.get_user(params[:email], params[:password])
    session[:user_id] = user[:data][:attributes][:id]
    session[:email] = user[:data][:attributes][:email]
    redirect_to '/dashboard'
  end

  def destroy
    reset_session
    redirect_to root_path
  end

  private
  def auth_hash
    request.env['omniauth.auth']
  end

  def user_attributes
    {
      google_id: auth_hash['uid'],
      email: auth_hash['info']['email'],
      token: auth_hash['credentials']['token']
    }
  end

  def user_params
    params.permit(:email, :password)
  end
end