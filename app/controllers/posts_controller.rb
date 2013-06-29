class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    
  end

  def create
    @post = Post.create(params[:post])

  end
  

end
