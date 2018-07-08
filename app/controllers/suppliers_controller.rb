class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
  end

  def create
    @supplier = Supplier.new({
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number]
    })
    @product.save
  end

  def show
    supplier_id = params[:id]
    @supplier = Supplier.find_by(id: supplier_id)
  end

  def update
    supplier_id = params[:id]
    @supplier = Supplier.find_by(id: supplier_id)
    @supplier.name = params[:name] || @supplier.name
    @supplier.email = params[:email] || @supplier.email
    @supplier.phone_number = params[:phone_number] || @supplier.phone_number
    @supplier.save
  end

  def destroy
    supplier_id = params[:id]
    supplier = Supplier.find_by(id: supplier_id)
    supplier.destroy
    render json: {message: "Supplier successfully deleted."}
  end
end
