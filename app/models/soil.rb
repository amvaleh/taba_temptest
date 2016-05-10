class Soil < ActiveRecord::Base

  mount_uploaders :avatars, AvatarUploader

  serialize :avatars, JSON

  has_many :plant_soils
  has_many :soils , through: :plant_soils

end
