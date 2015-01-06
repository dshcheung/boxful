class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.integer :box_id
      t.integer :location_type_id
      t.integer :delivery_address_id
      t.integer :transit_id
      t.integer :warehouse_position_id

      t.timestamps
    end
  end
end
