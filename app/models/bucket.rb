class Bucket < ActiveRecord::Base
  belongs_to :User
  has_many :items
  attr_accessible :title
end
