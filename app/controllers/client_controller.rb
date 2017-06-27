class ClientController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @client = Client.new(set_params)
  end

  private

  def set_params
    params.require(:client).permit(:email, :password, :password_confirmation)
  end
  
end
