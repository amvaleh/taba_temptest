class DropPlantShapes < ActiveRecord::Migration
  def change
    drop_table :plant_shapes
  end
end
