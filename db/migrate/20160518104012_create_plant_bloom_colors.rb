class CreatePlantBloomColors < ActiveRecord::Migration
  def change
    create_table :plant_bloom_colors do |t|
      t.integer :plant_id
      t.integer :bloom_color_id

      t.timestamps null: false
    end
  end
end
