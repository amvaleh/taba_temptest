class BloomColor < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  # has_many :plant_shapes
  has_many :plant_bloom_colors
  has_many :plants , through: :plant_bloom_colors
end
