class PickupsController < ApplicationController
  def index
    @have_boxes = false
    current_user.boxes.each do |box|
      if box.histories.last.location_type_id == 1
        @have_boxes = true
      end
    end
    @order = Order.new
    @delivery_addresses = current_user.delivery_addresses.order(:id)
    @time = TimeWhen.order(:id)
  end

  def create
    order = current_user.orders.new(pickup_params)
    if order.save
      current_user.boxes.each do |box|
        if box.histories.last.location_type_id == 1
          order.order_contents.create(box_id: box.id)
        end
      end
      render json: {data: order, status: 201, success: true}
    else
      render json: {data: order, success: false, eMessage: order.errors.messages}
    end
  end

  private
  def pickup_params
    params.require(:order).permit(:order_type_id, :delivery_address_id, :date_when, :time_when_id)
  end
end
