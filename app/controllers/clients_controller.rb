class ClientsController < ApplicationController
  def index
    
  end

  def new
    @client = Client.new
  end

  def create
    @client = @current_user.clients.new(client_registartion)

    if @client.save
      redirect_to clients_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def client_registartion
    params.require(:client).permit(:name, :phone, :email)
  end
end
