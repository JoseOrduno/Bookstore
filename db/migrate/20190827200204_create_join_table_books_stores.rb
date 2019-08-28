class CreateJoinTableBooksStores < ActiveRecord::Migration[6.0]
  def change
    create_join_table :books, :stores, table_name: :stocks
  end
end
