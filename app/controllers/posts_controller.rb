class PostsController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC")
  end

  def create
    post = Post.new
    post.contents = params[:contents]
    post.user_id = current_user[:id]
    post.save
    @posts = Post.all.order("created_at DESC")
    render :index
  end

  def destroy
    Post.find_by_id(params[:post_id]).destroy
    @posts = Post.all.order("created_at DESC")
    render :index
  end
end
