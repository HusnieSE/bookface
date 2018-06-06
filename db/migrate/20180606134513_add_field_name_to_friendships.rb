class AddFieldNameToFriendships < ActiveRecord::Migration[5.1]
  def change
    add_column :friendships, :friend_a, :intger
    add_column :friendships, :friend_b, :integer
  end
end
