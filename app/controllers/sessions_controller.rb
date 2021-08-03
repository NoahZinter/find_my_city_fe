class SessionsController < ApplicationController

  def create
    if params["password"].present?
      params["email"] = params["email"].downcase
      if User.where('email = ?', "#{params[:email]}").nil?
        user = User.create!(user_params)
        session[:user_id] = user.id
      else
        user = User.where('email = ?', "#{params[:email]}")
        session[:user_id] = user[0].id
      end
    else params["token"].present?
      user = User.find_or_create_by(email: user_attributes[:email])
      user.update(user_attributes)
      session[:user_id] = user.id
    end
    redirect_to '/dashboard'
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

  def user_params
    params.permit(:email, :password)
  end
end