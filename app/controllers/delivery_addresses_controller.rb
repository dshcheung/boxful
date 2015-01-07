class DeliveryAddressesController < ApplicationController
  def create
    address = current_user.delivery_addresses.new(delivery_address_params)
    if address.save
      render json: {data: address, status: 201, success: true}
    else
      render json: {data: address, success: false, eMessage: address.errors.messags}
    end
  end

  private
  def delivery_address_params
    params.require(:delivery_address).permit(:name, :address1, :address2, :region, :district, :contact_number)
  end
end
