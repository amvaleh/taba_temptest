class PlantShape < ActiveRecord::Base

  belongs_to :plant
  belongs_to :leaf_shape
  belongs_to :leaf_color
  belongs_to :physical_structure
  belongs_to :bloom_color

end
