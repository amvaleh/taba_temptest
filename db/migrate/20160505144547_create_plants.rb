class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :farsi_name
      t.string :latin_name
      t.string :scientific_name
      t.string :family
      t.integer :hardness
      t.string :geo_origin
      t.integer :min_height
      t.integer :max_height
      t.integer :min_light
      t.integer :max_light
      t.integer :min_temp
      t.integer :max_temp
      t.integer :min_moisture
      t.integer :max_moisture

      t.timestamps null: false
    end
  end
end
