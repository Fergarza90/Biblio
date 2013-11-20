class UsersController < ApplicationController
  def index
    @user = User.new
  end
 
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if@user.save
      redirect_to root_url, :notice =>"usuario registrado"
    else
      render  "new"
    end
    
  end
  
  def user_params
    params.require(:user).permit(:user, :password)
  end
end

