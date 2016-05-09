class Soil < ActiveRecord::Base

  mount_uploaders :avatars, AvatarUploader

  has_many :plant_soils
  has_many :soils , through: :plant_soils

end
