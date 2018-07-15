class CartedProductsController < ApplicationController

  def index
    @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    @product_ids = @carted_products.map {|carted_product| carted_product.product_id}
    @product_names = []
    @product_ids.each do |product_id|
      @product_names << Product.find_by(id: product_id).name
    end
    render "index.json.jbuilder"
  end
  
  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted"
      )
    @carted_product.save
    render "show.json.jbuilder"
  end

  def destroy
    @carted_product = CartedProduct.find_by(id: params[:id])
    if @carted_product.status == "carted" && current_user.id
      @carted_product.destroy
    end
    render json: {message: "Item successfully removed."}
  end

end 