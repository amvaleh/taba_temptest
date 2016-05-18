class AddMedicalFeatureIdToPlantMedicalFeatures < ActiveRecord::Migration
  def change
    add_column :plant_medical_features, :medical_feature_id, :integer
  end
end
