class PlantMedicalFeature < ActiveRecord::Base
  belongs_to :plant
  belongs_to :medical_feature
end
