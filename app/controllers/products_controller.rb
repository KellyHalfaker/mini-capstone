class ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render "all_products.json.jbuilder"
  end
  def product_method
    product_id = params["id"].to_i
    @product = Product.find_by(id: product_id)
    render "one_product.json.jbuilder"
  end
end
