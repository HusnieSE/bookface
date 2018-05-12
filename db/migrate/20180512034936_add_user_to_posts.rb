class AddUserToPosts < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :user, index: true
    change_column_null :posts, :user_id, false
    add_foreign_key :posts, :users
  end
end
