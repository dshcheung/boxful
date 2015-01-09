class UserPagesController < ApplicationController
  # before_filter :admin, :only => [:show]
  # before_filter :user, :only => [:show]

  def index
    @delivery_addresses = current_user.delivery_addresses
    @boxes = current_user.boxes.order(:id)
  end

  def show
    @delivery_address = DeliveryAddress.new
    @delivery_addresses = current_user.delivery_addresses
    if current_user.id == params[:id].to_i
      render 'show'
    else
      redirect_to orders_path
    end
  end

  protected
    def user
      current_user.id == params[:id].to_i
    end
end
