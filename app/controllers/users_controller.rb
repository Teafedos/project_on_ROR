class UsersController < ApplicationController
  def authorization
    @user = User.new
  end

  def enter
    if User.exists?(email: params[:user][:email]) and User.exists?(password: params[:user][:password])
      redirect_to testing_path
    end
  end

  

  def new
    @user = User.new

    
  end

  def create
    if User.exists?(email: params[:user][:email]) == false
      
      @user = User.new(user_params_register)

      if @user.save
        redirect_to authorization_users_path
      else
        
        render :new, status: :unprocessable_entity
      end
    else
      render :new, status: :unprocessable_entity
    end
    
    
  end

  def testing

  end


  private
  def user_params_register
    params.require(:user).permit(:login, :password, :email, :name)
  end
end
