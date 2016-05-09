class Propagation < ActiveRecord::Base

  has_many :plant_propagations
  has_many :plants , through: :plant_propagations
  
end
