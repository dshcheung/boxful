class BoxesController < ApplicationController
  def update
    box = Box.find(params[:id])
    if box.update(box_avatar_params)
      # redirect_to :back
      render json: {data: box, url: box.avatar.url(:small), success: true, status: 201}
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
