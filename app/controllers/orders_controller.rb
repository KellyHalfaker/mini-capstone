class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    @subtotal = 0
    carted_products.each do |carted_product|
      @subtotal += carted_product.product.price * carted_product.quantity
    end
    @tax = @subtotal * 0.09.round(2)
    @total = @subtotal + @tax
    @order = Order.new({
      user_id: current_user.id,
      subtotal: @subtotal,
      tax: @tax,
      total: @total
      })
    @order.save
    carted_products.update_all(status: "purchased", order_id: @order.id)
    render "show.json.jbuilder"
  end

  def index
    @orders = current_user.orders
    render "index.json.jbuilder"
  end
end
