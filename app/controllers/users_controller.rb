class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render new_user_path
    end
  end

  def show
    if current_user
      @posts = Post.find_all_by_user_id(current_user.id)
      @comments = Comment.find_all_by_user_id(current_user.id)
    else
      redirect :root
    end
  end
end
