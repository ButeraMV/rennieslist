class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    @user.email.downcase!
    
    if @user.save
      flash[:notice] = "Account created successfully!"
      session[:user_id] = @user.id.to_s
      redirect_to user_path(@user)
    else
      flash.now.alert = "Oops, couldn't create account. Please make sure you are using a valid email and password and try again."
      render :new
    end
  end

private

  def user_params
    params.require(:user).permit(:display_name, :email, :password, :password_confirmation)
  end
end