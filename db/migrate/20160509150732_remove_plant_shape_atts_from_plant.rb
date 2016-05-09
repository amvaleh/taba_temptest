class RemovePlantShapeAttsFromPlant < ActiveRecord::Migration
  def change
    remove_column :plants, :bloom_shape_id, :integer
    remove_column :plants, :bloom_color_id, :integer
    remove_column :plants, :leaf_shape_id, :integer
    remove_column :plants, :leaf_color_id, :integer
  end
end
  
