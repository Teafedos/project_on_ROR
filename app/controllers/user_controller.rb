class UserController < ApplicationController
  def authorization
    @user = User.new
  end

  def enter
    if User.exists?(mail: params[:user][:mail]) and User.exists?(secretpass: params[:user][:secretpass])
      redirect_to testing_path
    end
  end

  

  def registration
    @user = User.new

    
  end

  def datapush
    if User.exists?(mail: params[:user][:mail]) == false
      
      @user = User.new(user_params_register)

      if @user.save
        redirect_to @user
      else
        
        render :registration, status: :unprocessable_entity
      end
    else
      render :registration, status: :unprocessable_entity
    end
    
    
  end

  def testing

  end


  private
  def user_params_register
    params.require(:user).permit(:login, :secretpass, :mail, :nickname)
  end
end
