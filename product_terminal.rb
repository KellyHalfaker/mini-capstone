require "unirest"
require "tty-prompt"
require "tty-table"
puts "Which product(s) would you like to view?"
puts "(a) First"
puts "(b) Second"
puts "(c) Third"
puts "(d) All"

number = ""
input = gets.chomp
if input == "a"
  number = "first"
elsif input == "b"
  number = "second"
elsif input == "c"
  number = "third"
end



product_name = Unirest.get("http://localhost:3000/#{number}_product_url").body["name"]
product_price = Unirest.get("http://localhost:3000/#{number}_product_url").body["price"]
product_image_url = Unirest.get("http://localhost:3000/#{number}_product_url").body["image_url"]
product_description = Unirest.get("http://localhost:3000/#{number}_product_url").body["description"]

table = TTY::Table.new ['Product','Price', 'Image_url', 'Description' ], [[product_name, product_price, product_image_url, product_description]]

puts table.render(:basic)


