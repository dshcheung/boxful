class DeliveryAddress < ActiveRecord::Base
  belongs_to :user
  has_many :orders
#  has_many :histories
end
