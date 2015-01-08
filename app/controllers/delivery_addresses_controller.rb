class DeliveryAddressesController < ApplicationController
  def create
    address = current_user.delivery_addresses.new(delivery_address_params)
    if address.save
      if params[:delivery_address][:default] = 1
        current_user.delivery_addresses.update_all(default: 0)
        current_user.delivery_addresses.last.update(default: 1)
      end
      render json: {data: address, status: 201, success: true}
    else
      render json: {data: address, success: false, eMessage: address.errors.messags}
    end
  end

  private
  def delivery_address_params
    params.require(:delivery_address).permit(:name, :address1, :address2, :region, :district, :contact_number, :default)
  end
end
