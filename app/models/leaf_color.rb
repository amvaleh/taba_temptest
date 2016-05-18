class LeafColor < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  has_many :plant_leaf_colors
  has_many :plants , through: :plant_leaf_colors

end
