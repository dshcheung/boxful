class User < ActiveRecord::Base
  has_many :orders
  has_many :boxes
  has_many :delivery_addresses
#  has_many :billing_addresses

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
