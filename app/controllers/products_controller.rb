class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  def index
    @products = Product.all
    name_search = params[:name]
    order_by_price = params[:low_to_high]
    if name_search
      @products = @products.where("name ILIKE ?", "%#{name_search}%")
    end
    if order_by_price
      @products = @products.order(:price)
    else
      @products = @products.order(:id)
    end
    render "index.json.jbuilder"
  end

  def create
    @product = Product.new({
      name: params[:name],
      price: params[:price],
      in_stock: params[:in_stock],
      description: params[:description]
    })
    if @product.save
      render "show.json.jbuilder"
    else 
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "show.json.jbuilder"
  end

  def update
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.in_stock = params[:in_stock] || @product.in_stock
    @product.description = params[:description] || @product.description
    @product.supplier_id = params[:supplier_id] || @product.supplier_id
    if @product.save
      render "show.json.jbuilder"
    else 
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    product.destroy
    render json: {message: "Item successfully deleted."}
  end

end
