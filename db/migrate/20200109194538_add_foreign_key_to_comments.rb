class AddForeignKeyToComments < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :comments, :users, column: :user_id, primary_key: 'id'
    add_foreign_key :comments, :posts, column: :post_id, primary_key: 'id'
  end
end
