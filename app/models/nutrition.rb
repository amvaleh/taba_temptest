class Nutrition < ActiveRecord::Base

  has_many :plant_nutritions
  has_many :plants , through: :plant_nutritions

  mount_uploaders :avatars, AvatarUploader
  serialize :avatars, JSON
  
end
