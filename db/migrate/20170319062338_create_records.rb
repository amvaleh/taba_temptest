class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :probe_id
      t.integer :light
      t.integer :tempreature
      t.integer :soil_moisture
      t.integer :battery
      t.string :probe_time

      t.timestamps null: false
    end
  end
end
