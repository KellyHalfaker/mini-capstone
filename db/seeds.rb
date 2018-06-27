# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

weapon1 = Product.new({name: "Master Sword", price: 9001, image_url: "https://swordskingdom.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/6/5/654.jpg", description: "Your best weapon option for defeating Ganon and saving Princess Zelda!"})
weapon1.save
weapon2 = Product.new({name: "Energy Sword", price: 500, image_url: "https://img00.deviantart.net/072f/i/2012/355/c/9/haloreach_energy_sword_profile_by_toraiinxamikaze-d3jksoa.png", description: "Best option for one-shotting your friends in PvP and making no one want to play with you."})
weapon2.save
weapon3 = Product.new({name: "Lightsaber", price: 648, image_url: "https://cdna.artstation.com/p/assets/images/images/005/620/264/large/nikita-demidenko-sithlightsabervengence2-min.jpg?1492521633", description: "Standard issue lightsaber for all of your Sith needs."})
weapon3.save
