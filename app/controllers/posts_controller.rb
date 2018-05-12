class PostsController < ApplicationController
  def index
    # $stderr.puts ("index #{params[:posts]}")
    @posts = Post.all.order("created_at DESC")
  end

  def create
    post = Post.new
    # $stderr.puts ("sdsadaaaaaa #{params[:contents]}")
    post.contents = params[:contents]
    post.save
    @posts = Post.all.order("created_at DESC")
    $stderr.puts ("posts #{@posts.inspect}")
    render :index
  end
end
