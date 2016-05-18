class AddPlantIdToBloomColor < ActiveRecord::Migration
  def change
    add_column :bloom_colors, :plant_id, :integer
  end
end
