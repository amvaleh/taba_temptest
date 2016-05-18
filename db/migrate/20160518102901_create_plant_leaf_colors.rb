class CreatePlantLeafColors < ActiveRecord::Migration
  def change
    create_table :plant_leaf_colors do |t|
      t.integer :plant_id
      t.integer :leaf_color_id

      t.timestamps null: false
    end
  end
end
