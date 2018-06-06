class ChangeDataTypeForFriendA < ActiveRecord::Migration[5.1]
  def self.up
    change_table :friendships do |t|
      t.change :friend_a, :integer
      t.change :friend_b, :integer
    end
  end
  def self.down
    change_table :friendships do |t|
      t.change :friend_a, :integer
      t.change :friend_b, :integer
    end
  end
end
