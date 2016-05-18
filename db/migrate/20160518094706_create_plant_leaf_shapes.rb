class CreatePlantLeafShapes < ActiveRecord::Migration
  def change
    create_table :plant_leaf_shapes do |t|
      t.integer :plant_id
      t.integer :leaf_shape_id

      t.timestamps null: false
    end
  end
end
