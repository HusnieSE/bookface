class CommentsController < ApplicationController
    def index
        @comments = Comment.all.order("created_at DESC")
    end
  
    def create
        # object = Hash.new
        # contents = params[:contents]
        # post_id = params[:post_id]
        puts params[:contents]
        user_id = eval(params[:user_id])
        post_id = eval(params[:post_id])
        $stderr.puts post_id[:value]
        comment = Comment.new
        comment.contents = params[:contents]
        comment.post_id = post_id[:value]
        comment.user_id = user_id[:value]
        comment.save
        # @comments = Comment.all.order("created_at DESC")
        redirect_to '/posts'
    end
end
  