class Driver < ActiveRecord::Base
  has_many :transits
  has_many :cars, :through => :transits
end
