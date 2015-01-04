class AddressesController < ApplicationController
  def create
    address = current_user.addresses.new(address_params)
    if address.save
      redirect_to user_pages_path
    else
      flash[:message] = address.errors.messages
      redirect_to :back # render 'index'
    end
  end

  private
  def address_params
    params.require(:address).permit(:address1, :address2, :region, :district, :phone)
  end
end
