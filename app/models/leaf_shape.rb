class LeafShape < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  has_many :plant_shapes


end
