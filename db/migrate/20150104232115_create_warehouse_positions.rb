class CreateWarehousePositions < ActiveRecord::Migration
  def change
    create_table :warehouse_positions do |t|
      t.string :row
      t.string :column
      t.integer :warehouse_id
      t.integer :box_id

      t.timestamps
    end
  end
end
