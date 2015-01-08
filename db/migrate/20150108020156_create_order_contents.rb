class CreateOrderContents < ActiveRecord::Migration
  def change
    create_table :order_contents do |t|
      t.integer :order_id
      t.integer :box_id
      t.timestamps
    end
  end
end
