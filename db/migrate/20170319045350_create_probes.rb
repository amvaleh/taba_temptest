class CreateProbes < ActiveRecord::Migration
  def change
    create_table :probes do |t|
      t.integer :plant_id
      t.integer :user_id
      t.string :serial_number

      t.timestamps null: false
    end
  end
end
