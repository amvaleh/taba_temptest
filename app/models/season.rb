class Season < ActiveRecord::Base

  has_many :plant_nutritions
  has_many :waterings

end
