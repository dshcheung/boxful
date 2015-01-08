class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :order_type
  belongs_to :delivery_address
  belongs_to :time_when
  has_many :order_contents
  has_many :boxes, :through => :order_contents
end
