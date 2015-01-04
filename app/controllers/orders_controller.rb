class OrdersController < ApplicationController
  def index
    @delivery_address = DeliveryAddress.new
    @order = Order.new
  end

  def create
    order = current_user.orders.new(order_params)
    for i in 1..order.amount
      order.boxes.new(:user_id => current_user.id)
    end
    if order.save
      redirect_to user_pages_path
      # render json: order, status: 201
    else
      flash[:message] = order.errors.messages
      redirect_to :back
    end
  end

  private
  def order_params
    params.require(:order).permit(:amount, :order_type_id, :delivery_address_id)
  end
end
