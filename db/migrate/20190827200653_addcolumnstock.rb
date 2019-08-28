class Addcolumnstock < ActiveRecord::Migration[6.0]
  def change
    add_column :stocks, :stock, :integer
    add_index :stocks, [:book_id, :store_id], unique: true
    add_column :stocks, :id, :primary_key
  end
end
