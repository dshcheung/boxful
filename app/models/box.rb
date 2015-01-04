class Box < ActiveRecord::Base
  belongs_to :user
  belongs_to :order
  belongs_to :location_type
#  has_many :histories
#  has_one :warehouse_position
end
