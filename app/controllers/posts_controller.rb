class PostsController < ApplicationController
  def index
    # $stderr.puts ("index #{params[:posts]}")
    @posts = Post.all.order("created_at DESC")
  end

  def create
    post = Post.new
    $stderr.puts ("sdsadaaaaaa #{current_user[:id].inspect}")
    post.contents = params[:contents]
    post.user_id = current_user[:id]
    post.save
    @posts = Post.all.order("created_at DESC")
    $stderr.puts ("posts #{@posts.inspect}")
    render :index
  end
end
