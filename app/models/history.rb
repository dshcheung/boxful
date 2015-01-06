class History < ActiveRecord::Base
  belongs_to :box
  belongs_to :location_type
  belongs_to :delivery_address
  belongs_to :transit
  belongs_to :warehouse_position
end
