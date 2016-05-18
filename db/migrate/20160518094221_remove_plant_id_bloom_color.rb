class RemovePlantIdBloomColor < ActiveRecord::Migration
  def change
    remove_column :bloom_colors , :plant_id , :integer
  end
end
