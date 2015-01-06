class DeliveryAddressesController < ApplicationController
  def create
    address = current_user.delivery_addresses.new(delivery_address_params)
    if address.save
      render json: address, status: 201
    else
      flash[:message] = address.errors.messages
      redirect_to :back
    end
  end

  private
  def delivery_address_params
    params.require(:delivery_address).permit(:name, :address1, :address2, :region, :district, :contact_number)
  end
end
