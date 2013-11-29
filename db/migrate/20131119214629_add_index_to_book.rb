class AddIndexToBook < ActiveRecord::Migration
  def change
  	add_index :books, :category_id
  end
end
