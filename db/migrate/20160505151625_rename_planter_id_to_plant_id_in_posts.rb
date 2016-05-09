class RenamePlanterIdToPlantIdInPosts < ActiveRecord::Migration
  def change
    rename_column :posts , :planter_id , :plant_id
  end
end
