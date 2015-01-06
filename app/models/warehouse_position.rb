class WarehousePosition < ActiveRecord::Base
  belongs_to :warehouse
  belongs_to :box
  has_many :histories
end
