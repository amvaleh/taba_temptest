class AddPhysicalStructureIdToPlantShapes < ActiveRecord::Migration
  def change
    add_column :plant_shapes, :physical_structure_id, :integer
  end
end
