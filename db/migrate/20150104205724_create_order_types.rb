class CreateOrderTypes < ActiveRecord::Migration
  def change
    create_table :order_types do |t|
      t.string :order_type

      t.timestamps
    end
  end
end
