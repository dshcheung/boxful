class UserPagesController < ApplicationController
  def index
    @delivery_addresses = current_user.delivery_addresses
  end
end
