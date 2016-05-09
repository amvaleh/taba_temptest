class Epidemic < ActiveRecord::Base

  mount_uploaders :avatars, AvatarUploader
  serialize :avatars, JSON

  has_many :plant_epidemics
  has_many :plants , through: :plant_epidemics


end
