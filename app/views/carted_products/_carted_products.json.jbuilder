json.id carted_product.id
json.user_id carted_product.user_id
json.product_name Product.find_by(id: carted_product.product_id).name
json.quantity carted_product.quantity
json.status carted_product.status