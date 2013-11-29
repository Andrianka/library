class AddIndexToCategory < ActiveRecord::Migration
  def change
  	add_index :categories, :book_id
  end
end
