class RemoveBloomShapeFromPlantShape < ActiveRecord::Migration
  def change
    remove_column :plant_shapes, :bloom_shape_id, :integer
  end
end
