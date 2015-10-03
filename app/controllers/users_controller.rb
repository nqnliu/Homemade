class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    attributes = params[:user].permit(:username, :email, :password)
    @user = User.create(attributes)
    if @user.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
    end
    
    render :new
  end
  
  def show
  end
end
