class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(title: params[:title], 
                    content: params[:content], 
                    user_id: current_user.id)

    if @post.save
      respond_to do |format|
        format.html {render partial: 'player'}
      end
    else
      respond_to do |format|
        format.js
      end
      # flash.now.alert = "Something went wrong with your post, try again"
      # render user_posts(current_user.id)
      # render page.js {'edit'}
    end
  end

  def show
    @post = Post.find_by_id(params[:id])
  end
end
