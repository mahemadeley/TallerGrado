class ClientController < ApplicationController
  layout 'login'

  def new
    #@client = Cliente.new
  end

  def create
    @client = Cliente.new(set_params)
  end

  private

  def set_params
    params.require(:client).permit(:email, :password, :password_confirmation)
  end
  
end
