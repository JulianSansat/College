class LoginController < ApplicationController
  def index
  end

  def auth
  	email = params[:email]
  	senha = params[:pass]
  	@user = User.find_by email: email, senha: senha 
  	if @user
  	 	redirect_to users_path
  	else 
  		redirect_to index_path, notice: 'Usuário e/ou senha inválidos'
  	end
  end
end
