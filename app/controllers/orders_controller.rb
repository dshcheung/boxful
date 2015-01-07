class OrdersController < ApplicationController
  def index
    @order = Order.new
    @delivery_address = DeliveryAddress.new
    @delivery_addresses = current_user.delivery_addresses
  end

  def create
    order = current_user.orders.new(order_params)
    for i in 1..order.amount
      box = order.boxes.new(:user_id => current_user.id)
      history = box.histories.new(:location_type_id => 2)
    end
    if order.save
      render json: {data: order, status: 201, success: true}
    else
      render json: {data: order, success: false, eMessage: order.errors.messages}
    end
  end

  private
  def order_params
    params.require(:order).permit(:amount, :order_type_id, :delivery_address_id)
  end
end
