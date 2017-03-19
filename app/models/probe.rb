class Probe < ActiveRecord::Base

  belongs_to :user
  belongs_to :plant

  has_many :records

  validates_presence_of [:user_id,:plant_id,:serial_number]

end
