class DeliveryAddressesController < ApplicationController
  def create
    address = current_user.delivery_addresses.new(delivery_address_params)
    if address.save
      redirect_to user_pages_path
    else
      flash[:message] = address.errors.messages
      redirect_to :back # render 'index'
    end
  end

  private
  def delivery_address_params
    params.require(:delivery_address).permit(:address1, :address2, :region, :district, :contact_number)
  end
end
