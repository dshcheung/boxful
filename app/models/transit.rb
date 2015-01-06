class Transit < ActiveRecord::Base
  belongs_to :car
  belongs_to :driver
  has_many :histories
end
