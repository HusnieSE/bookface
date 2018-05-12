class CreateFriendships < ActiveRecord::Migration[5.1]
  def change
    create_table :friendships do |t|
      t.string :friend_a
      t.string :friend_b

      t.timestamps
    end
  end
end
