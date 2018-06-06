class RemoveFriendAFromFriendships < ActiveRecord::Migration[5.1]
  def change
    remove_column :friendships, :friend_a, :integer
    remove_column :friendships, :friend_b, :integer
  end
end
