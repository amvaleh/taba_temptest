class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :profile , :dependent => :destroy
  has_many :data_logs
  has_many :comments , :dependent => :destroy
  has_many :posts , :dependent => :destroy
  has_many :bluetooth_devices
  has_many :probes

  acts_as_voter

  acts_as_follower
  acts_as_followable


  apply_simple_captcha
  validates_presence_of :email


  def admin?
    self.role == 1
  end

  # before_create :generate_authentication_token!


  def generate_authentication_token!
    begin
      self.auth_token = Devise.friendly_token
    end while self.class.exists?(auth_token: auth_token)
  end

end
