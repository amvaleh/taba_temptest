class Profile < ActiveRecord::Base


	belongs_to :user

	has_many :gardens , :dependent => :destroy
	mount_uploader :profile_photo, AvatarUploader
	mount_uploader :cover_photo, AvatarUploader

	validates :mobile_number, presence: true
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :gender , presence: true

	extend FriendlyId
	  friendly_id :user_email, use: :slugged

	def user_email
		st = self.user.email
	end


end
