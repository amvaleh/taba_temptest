class CreatePlantPhysicalStructures < ActiveRecord::Migration
  def change
    create_table :plant_physical_structures do |t|
      t.integer :plant_id
      t.integer :physical_structure_id

      t.timestamps null: false
    end
  end
end
