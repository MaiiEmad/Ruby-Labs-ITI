class AuthController < ApplicationController
  before_action :authenticated_user, except: [:logout]

  def signup_form 
  end

  def signup
    user = User.new(params.permit(
      :name, 
      :email,
      :password
    ))
    if user.save
      session[:user] = user
      redirect_to root_path
    else
      redirect_to register_path
    end
  end

  def signin_form
 
  end

  def signin
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user] = user
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def logout
    session[:user] = nil
    redirect_to login_path
  end
end


