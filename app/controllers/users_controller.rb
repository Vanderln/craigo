class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    p params.inspect
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash.now.alert = "Something went wrong!!"
      render new_user_path
    end
  end

  def show
    @user = User.find(params[:id])    
  end
end
