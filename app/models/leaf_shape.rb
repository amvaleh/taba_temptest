class LeafShape < ActiveRecord::Base

  mount_uploader :avatar, AvatarUploader

  has_many :plant_leaf_shapes
  has_many :plants , through: :plant_leaf_shapes


end
