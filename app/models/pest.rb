class Pest < ActiveRecord::Base

  mount_uploaders :avatars, AvatarUploader
  serialize :avatars, JSON

  has_many :plant_pests
  has_many :plants , through: :plant_pests

end
