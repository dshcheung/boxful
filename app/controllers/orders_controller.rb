class OrdersController < ApplicationController
  def index
    @order = Order.new
    @delivery_address = DeliveryAddress.new
    @delivery_addresses = current_user.delivery_addresses.order(:id)
    @time = TimeWhen.order(:id)
  end

  def create
    order = current_user.orders.new(order_params)
    if order.save
      for i in 1..params[:amount].to_i
      box = Box.create(:user_id => current_user.id)
      history = box.histories.create(:location_type_id => 2)
      order_content = OrderContent.create(box_id: box.id, order_id: order.id)
    end
      render json: {data: order, status: 201, success: true}
    else
      render json: {data: order, success: false, eMessage: order.errors.messages}
    end
  end

  private
  def order_params
    params.require(:order).permit(:order_type_id, :delivery_address_id, :date_when, :time_when_id)
  end
end
