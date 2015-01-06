class Warehouse < ActiveRecord::Base
  has_many :warehouse_positions
end
