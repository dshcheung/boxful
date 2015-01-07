class BoxesController < ApplicationController
  def update
    puts default_image_url
    box = Box.find(params[:id])
    if box.update(box_avatar_params)
      render json: {data: box, success: true, status: 201}
    else
      render json: {data: box, success: false, eMessage: box.errors.messages}
    end
  end

  private
  def default_image_url
    view_context.image_path('/static_pages/boximg2.png')
  end
  def box_avatar_params
    params.require(:box).permit(:avatar)
  end
end
