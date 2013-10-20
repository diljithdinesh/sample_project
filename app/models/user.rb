class User < ActiveRecord::Base

  #ASSOCIATIONS
  has_many :buckets
  has_many :items

  #include ActiveModel::ForbiddenAttributesProtection
  attr_accessible :email, :name, :password, :password_confirmation
  attr_accessor :user#, :password_confirmation
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true
  has_secure_password
  validates :password, length: { minimum: 6 }
  validates_confirmation_of :password
end
