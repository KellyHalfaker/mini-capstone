class ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render "all_products.json.jbuilder"
  end
  def first_product
    @first_product = Product.first
    render "first_product.json.jbuilder"
  end
  def second_product
    @second_product = Product.second
    render "second_product.json.jbuilder"
  end
  def third_product
    @third_product = Product.third
    render "third_product.json.jbuilder"
  end
end
