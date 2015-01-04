class UserPagesController < ApplicationController
  def index
    @orders = current_user.orders
    @delivery_addresses = current_user.delivery_addresses
  end
end
