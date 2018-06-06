class CreateFriendships < ActiveRecord::Migration[5.1]
  def change
    create_table :friendships do |t|
      t.integer :friend_a
      t.integer :friend_b
    end
  end
end
