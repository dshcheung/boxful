class CreateTimeWhens < ActiveRecord::Migration
  def change
    create_table :time_whens do |t|
      t.string :time

      t.timestamps
    end
  end
end
