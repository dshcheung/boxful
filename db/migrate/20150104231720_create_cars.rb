class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :license

      t.timestamps
    end
  end
end
