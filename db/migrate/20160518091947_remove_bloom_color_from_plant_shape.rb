class RemoveBloomColorFromPlantShape < ActiveRecord::Migration
  def change
    remove_column :plant_shapes , :bloom_color_id , :integer
  end
end
