class UpvoteTable < ActiveRecord::Migration[5.1]
  def change
    create_table :upvotes do |t|
      t.integer :user_id, null: false
      t.integer :review_id, null: false
    end
    add_index :upvotes, [:user_id, :review_id], unique: true
  end
end
