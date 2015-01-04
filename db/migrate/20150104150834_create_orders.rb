class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :amount
      t.integer :order_type_id
      t.integer :user_id
      t.integer :delivery_address_id


      t.timestamps
    end
  end
end
