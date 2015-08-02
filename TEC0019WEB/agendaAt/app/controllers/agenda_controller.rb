class AgendaController < ApplicationController
  def index
  	
  	@contatos = Contato.where(User_id: User.find_by(id: session[:user_id]))
  	
  	
  end

  def add
  end

  def edit
  end
end
