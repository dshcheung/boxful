class UserPagesController < ApplicationController
  def index
    @address = Address.new
  end
end
