Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/all_products_url" => "products#all_products"
  get "/product" => "products#product_method"
  get "/product/:id" => "products#product_method"
end
