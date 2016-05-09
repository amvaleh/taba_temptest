class PlantPest < ActiveRecord::Base

  belongs_to :plant
  belongs_to :pest

end
