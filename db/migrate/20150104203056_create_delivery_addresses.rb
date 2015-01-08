class CreateDeliveryAddresses < ActiveRecord::Migration
  def change
    create_table :delivery_addresses do |t|

      t.string :name
      t.string :address1
      t.string :address2
      t.string :region
      t.string :district
      t.integer :contact_number
      t.integer :user_id
      t.integer :default

      t.timestamps
    end
  end
end
