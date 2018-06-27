require "unirest"
require "tty-prompt"
require "tty-table"
puts "Which product(s) would you like to view?"
puts "(a) First"
puts "(b) Second"
puts "(c) Third"
puts "(d) All"
product1_name = Unirest.get("http://localhost:3000/first_product_url").body["name"]
product1_price = Unirest.get("http://localhost:3000/first_product_url").body["price"]
product1_image_url = Unirest.get("http://localhost:3000/first_product_url").body["image_url"]
product1_description = Unirest.get("http://localhost:3000/first_product_url").body["description"]
table = TTY::Table.new ['Product','Price', 'Image_url', 'Description' ], [[product1_name, product1_price, product1_image_url, product1_description], ['b1', 'b2']]
puts table.render(:basic)
