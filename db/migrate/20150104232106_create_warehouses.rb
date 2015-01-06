class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.string :address1
      t.string :address2
      t.string :region
      t.string :district
      t.integer :contact

      t.timestamps
    end
  end
end
