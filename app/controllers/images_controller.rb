class ImagesController < ApplicationController
  def create
    @image = Image.new({
      image_url: params[:url],
      product_id: params[:product_id]
    })
    @image.save
    render json: {message: "Image successfully added."}
  end
end
