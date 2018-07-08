# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

weapon1 = Product.new({supplier_id: 1, name: "Master Sword", price: 9001, description: "Your best weapon option for defeating Ganon and saving Princess Zelda!"})
weapon1.save
weapon2 = Product.new({supplier_id: 2, name: "Energy Sword", price: 500, description: "Best option for one-shotting your friends in PvP and making no one want to play with you."})
weapon2.save
weapon3 = Product.new({supplier_id: 2, name: "Lightsaber", price: 648, description: "Standard issue lightsaber for all of your Sith needs."})
weapon3.save

supplier1 = Supplier.new({name: "Goddess Hylia", email: "triforce@email.com", phone_number: "777-777-7777"})
supplier1.save
supplier2 = Supplier.new({name: "Space Weapons Supply Co.", email: "warsinspace@email.com", phone_number: "740-453-4242"})
supplier2.save

image1 = Image.new({url: "https://swordskingdom.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/6/5/654.jpg", product_id: 1})
image1.save
image2 =  Image.new ({url: "https://img00.deviantart.net/072f/i/2012/355/c/9/haloreach_energy_sword_profile_by_toraiinxamikaze-d3jksoa.png", product_id: 2})
image2.save
image3 = Image.new({url: "https://cdna.artstation.com/p/assets/images/images/005/620/264/large/nikita-demidenko-sithlightsabervengence2-min.jpg?1492521633", product_id: 3})
image3.save
image4 = Image.new({url: "http://cdn8.bigcommerce.com/s-sd2rb2jpmz/images/stencil/1280x1280/products/4144/4797/CH-495BL__1__78162.1487693311.jpg?c=2&imbypass=on", product_id: 1})
image4.save
image5 = Image.new({url: "https://image.halocdn.com/?path=https:%2F%2Fcontent.halocdn.com%2Fmedia%2FDefault%2Fencyclopedia%2Fweapons%2FEnergy-Sword%2Fupdate-12152015%2Fenergy-sword-hero-large-1920x675-8678fbeff61b4f828ebb8b7ee7c05bf2.jpg&leftCrop=400&rightCrop=400&hash=PGRz21yTxX1oJY9ZWwZC8VSLGDtObJAGVu%2BYpWMdC2s%3D", product_id: 2})
image5.save
image6 = Image.new({url: "https://www.zeldadungeon.net/Zelda16/Walkthrough/13/020.jpg", product_id: 1})
image6.save