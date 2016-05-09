class CreatePlantShapes < ActiveRecord::Migration
  def change
    create_table :plant_shapes do |t|
      t.integer :plant_id
      t.integer :leaf_shape_id
      t.integer :leaf_color_id
      t.integer :bloom_shape_id
      t.integer :bloom_color_id

      t.timestamps null: false
    end
  end
end
