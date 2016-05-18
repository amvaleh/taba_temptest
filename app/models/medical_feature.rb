class MedicalFeature < ActiveRecord::Base

  has_many :plant_medical_features
  has_many :plants , through: :plant_medical_features

end
