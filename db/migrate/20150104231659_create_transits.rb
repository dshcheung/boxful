class CreateTransits < ActiveRecord::Migration
  def change
    create_table :transits do |t|
      t.integer :car_id
      t.integer :driver_id

      t.timestamps
    end
  end
end
