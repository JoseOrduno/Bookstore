class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :codename
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
