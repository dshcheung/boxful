class Car < ActiveRecord::Base
  has_many :transits
  has_many :drivers, :through => :transits
end
