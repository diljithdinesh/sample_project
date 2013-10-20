class Item < ActiveRecord::Base
  #belongs_to :bucket
  belongs_to :user
  attr_accessible :model, :price, :quantity, :title
end
