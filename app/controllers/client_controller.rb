class ClientController < ApplicationController
  def authorization
    @client = Client.new
  end
  
  def enter
     
  end

  

  def registration
    @client = Client.new

    @test = Client.where(mail: 'test')
  end

  def datapush
    @client = Client.new(client_params_register)

    if @client.save
      redirect_to @client
    else
      render :authorization, status: :unprocessable_entity
    end
  end


  private
  def client_params_register
    params.require(:client).permit(:login, :password, :mail, :nickname)
  end
end
