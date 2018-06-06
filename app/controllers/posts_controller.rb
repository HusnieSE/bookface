class PostsController < ApplicationController

  def index
    friends = Friendship.where("friend_a = #{current_user[:id]} OR friend_b = #{current_user[:id]}")
    puts "IDS #{friends.to_json}"
    friends_id = friends.map { |val| val[:friend_a] == current_user[:id] ? val[:friend_b] : val[:friend_a] }
    puts "IDS #{friends_id}"
    @friends_list = User.where(id: [friends_id])
    friends_id << current_user[:id]
    @users_list = User.where.not(id: [friends_id])
    @posts = Post.where(user_id:friends_id).order("created_at DESC").map do |p|
      user = User.find_by_id(p.user_id)
      comments = Comment.where(post_id: p.id).map do |c|
        # c["name"] = User.find_by_id(c.user_id)[:name]
        puts "#{User.find_by_id(c.user_id)[:name]}"
        {
          contents: c.contents,
          name: User.find_by_id(c.user_id)[:name],
          created_at: c.created_at,
          user_id: c.user_id
        }
      end
      puts comments.to_json
      {
        id: p.id,
        content: p.contents, 
        user: user.name,
        user_id: p.user_id,
        created_at: p.created_at,
        email: user.email,
        comments: comments
      }
    end
  end

  def create
    post = Post.new
    post.contents = params[:contents]
    post.user_id = current_user[:id]
    post.save
    index
    render :index
  end

  def destroy
    Post.find_by_id(params[:post_id]).destroy
    @posts = Post.all.order("created_at DESC")
    render :index
  end
end
