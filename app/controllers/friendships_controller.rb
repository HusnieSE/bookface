class FriendshipsController < ApplicationController
    def index
      
    end
  
    def create
      post = Friendship.new
      post.friend_a = current_user[:id]
      post.friend_b = params[:friend_b]
      post.save
      redirect_to posts_index_url
    end
  end
  