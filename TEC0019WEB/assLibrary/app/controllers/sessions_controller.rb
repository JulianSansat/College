class SessionsController < ApplicationController
 skip_before_action :authorize
  def new
  end

  def create
  	name = params[:name]
  	senha = params[:password]
  	@user = User.find_by name: name, password: senha 
  	if @user
  		session[:user_id] = @user.id
  		redirect_to books_url
  	else
  		redirect_to login_url, alert: "Invalid user/password combination"
  	end			
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to login_url, alert: "Logged out"
  end
end
