class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end
    add_index :likes, :post_id
    add_index :likes, :user_id
    add_index :likes, [:user_id, :post_id], unique: true
  end
end