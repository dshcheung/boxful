class OrderContent < ActiveRecord::Base
  belongs_to :order
  belongs_to :box
end
