class PlantSoil < ActiveRecord::Base
  belongs_to :plant
  belongs_to :soil

  # validates_uniqueness_of [:plant_id,:soil_id]
end
