class PlantLeafShape < ActiveRecord::Base
  belongs_to :plant
  belongs_to :leaf_shape
end
