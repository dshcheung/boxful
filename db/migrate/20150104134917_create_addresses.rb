class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|

      t.string :address1
      t.string :address2
      t.string :region
      t.string :district
      t.integer :phone
      t.integer :user_id

      t.timestamps
    end
  end
end
