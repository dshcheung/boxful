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
    order = Order.find(params[:order_id])
    if params[:all].to_i == 1
      order.boxes.each do |box|
        Box.find(box.id).histories.create(location_type_id: 1, delivery_address_id: order.delivery_address.id)
      end
      order.destroy
      render json: {success: true}
    elsif params[:all].to_i == 2
      order.boxes.each do |box|
        Box.find(box.id).histories.create(location_type_id: 2)
      end
      render json: {success: true}
    elsif params[:all].to_i == 3
      order.boxes.each do |box|
        Box.find(box.id).histories.create(location_type_id: 3)
      end
      order.destroy
      render json: {success: true}
    end
  end
end
