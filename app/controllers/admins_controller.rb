class AdminsController < ApplicationController
  before_filter :authenticate_admin!
  def index
    @orders = Order.order(:id)
  end

  def schedule
    orders = Order.order(:id).where(date_when: params[:date])
    render json: {orders: orders, success: true, status: 201}
  end

  def change_status
    if params[:all].to_i == 1
      Order.find(params[:order_id]).boxes.each do |box|
        Box.find(box.id).histories.create(location_type_id: 1, delivery_address_id: Order.find(params[:order_id]).delivery_address.id)
      end
      render json: {success: true}
    elsif params[:all].to_i == 2
      Order.find(params[:order_id]).boxes.each do |box|
        Box.find(box.id).histories.create(location_type_id: 2)
      end
      render json: {success: true}
    elsif params[:all].to_i == 3
      Order.find(params[:order_id]).boxes.each do |box|
        Box.find(box.id).histories.create(location_type_id: 3)
      end
      render json: {success: true}
    end
  end
end
