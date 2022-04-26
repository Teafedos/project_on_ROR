class ClientController < ApplicationController
  def authorization
    @client = Client.new
  end
  
  def enter
    if Client.exists?(mail: params[:client][:mail]) && Client.exists?(password: params[:client][:password_digest])
      redirect_to testing_path
    end
  end

  

  def registration
    @client = Client.new

    
  end

  def datapush
    if Client.exists?(mail: params[:client][:mail]) == false
      
      @client = Client.new(client_params_register)

      if @client.save
        redirect_to @client
      else
        render :authorization, status: :unprocessable_entity
      end
    else
      render :registration, status: :unprocessable_entity
    end
    
    
  end

  def testing

  end


  private
  def client_params_register
    params.require(:client).permit(:login, :password_digest, :mail, :nickname)
  end
end
