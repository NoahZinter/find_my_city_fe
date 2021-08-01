class SessionsController < ApplicationController

  def create
    user = User.find_or_create_by(email: user_attributes[:email])
    user.update(user_attributes)
    session[:user_id] = user.id
    redirect_to '/'
  end

  def destroy
    session[:user_id] = nil
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
end