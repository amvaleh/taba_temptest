class Plant < ActiveRecord::Base

  def to_param
    farsi_name
  end

  validates_presence_of :farsi_name

  mount_uploaders :avatars, AvatarUploader
  serialize :avatars, JSON

  acts_as_followable

  has_many :comments , as: :commentable , dependent: :destroy
  has_many :posts

  has_many :plant_soils , :dependent => :destroy
  has_many :soils , through: :plant_soils , :dependent => :destroy

  has_many :plant_nutritions
  has_many :nutritions , through: :plant_nutritions

  has_many :plant_propagations
  has_many :propagations , through: :plant_propagations

  has_many :plant_epidemics
  has_many :epidemics , through: :plant_epidemics

  has_many :plant_pests
  has_many :pests , through: :plant_pests

  has_many :plant_medical_features
  has_many :medical_features , through: :plant_medical_features

  #  plant shapes:
  has_many :plant_leaf_shapes
  has_many :leaf_shapes , through: :plant_leaf_shapes

  has_many :plant_leaf_colors
  has_many :leaf_colors , through: :plant_leaf_colors

  has_many :plant_bloom_colors
  has_many :bloom_colors , through: :plant_bloom_colors

  has_many :plant_physical_structures
  has_many :physical_structures , through: :plant_physical_structures
  #

  has_many :bloom_seasons

  has_many :waterings
  has_many :probes
  #
  # extend FriendlyId
  # friendly_id :farsi_name, use: :slugged

end
