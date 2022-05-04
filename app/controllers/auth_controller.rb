class AuthController < ApplicationController

  before_action except: :logout do
    redirect_to root_path if session[:user_id]
  end

  def authorization

    if request.get?
      return render :authorization
    end

    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to :registration
    end
  end

  def registration
    if request.get?
      @user = User.new
      return render :registration
    end

    @user = User.new(user_params_register)

    if @user.save
      redirect_to authorization_path
    else
      render :registration, status: :unprocessable_entity
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

  private
  def user_params_register
    params.require(:user).permit(:login, :password, :email, :name)
  end

end
