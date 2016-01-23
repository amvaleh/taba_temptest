class PlanterGallery < ActiveRecord::Base

  mount_uploader :avatar , AvatarUploader
  belongs_to :planter

end
