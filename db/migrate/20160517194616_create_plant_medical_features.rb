class CreatePlantMedicalFeatures < ActiveRecord::Migration
  def change
    create_table :plant_medical_features do |t|
      t.integer :plant_id

      t.timestamps null: false
    end
  end
end
