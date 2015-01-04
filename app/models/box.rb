class Box < ActiveRecord::Base
  belongs_to :user
  belongs_to :order
  has_many :histories
  has_one :warehouse_position
end
