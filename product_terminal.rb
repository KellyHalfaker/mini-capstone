require "unirest"
require "tty-prompt"
require "tty-table"
puts "Please select an option:"
puts "a) Search product by ID"
puts "b) View all products"
puts "c) Create a new product"
puts "d) Edit a product"
puts "e) Delete a product"

input = gets.chomp
if input == "a"
  puts "Please enter an ID number:"
  id = gets.chomp
  product_name = Unirest.get("http://localhost:3000/products/#{id}").body["name"]
  product_price = Unirest.get("http://localhost:3000/products/#{id}").body["price"]
  product_image_url = Unirest.get("http://localhost:3000/products/#{id}").body["image_url"]
  product_description = Unirest.get("http://localhost:3000/products/#{id}").body["description"]
  table = TTY::Table.new ['Product','Price', 'Image_url', 'Description' ], [[product_name, product_price, product_image_url, product_description]]
  puts table.render(:basic)
end


