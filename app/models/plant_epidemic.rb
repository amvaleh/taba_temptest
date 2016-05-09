class PlantEpidemic < ActiveRecord::Base

  belongs_to :plant
  belongs_to :epidemic

end
