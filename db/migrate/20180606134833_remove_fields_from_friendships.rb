class RemoveFieldsFromFriendships < ActiveRecord::Migration[5.1]
  def change
    remove_column :friendships, :friend_a, :string
    remove_column :friendships, :friend_b, :string
  end
end
