class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :order_type
  belongs_to :delivery_address
  has_many :boxes
end
