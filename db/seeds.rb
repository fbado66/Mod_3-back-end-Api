# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# sername"
#     t.string "street_address"
#     t.string "street_address_2"
#     t.string "city"
#     t.integer "zip_code"
#     t.string "email"
#     t.integer "phone_number"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

User.destroy_all
Cart.destroy_all
Product.destroy_all
AddProduct.destroy_all
Review.destroy_all







user_1 = User.create(name: 'Anna', username: 'Master', street_address: "Main st", street_address_2: "Apt 4M", city: "Queens", zip_code: 12345)
user_2 = User.create(name: 'Franklin', username: 'Breaking-Conventions', street_address: "Lonely Rd.", street_address_2: "Apt Z", city: "Flushing", zip_code: 11345)

cart_1 = Cart.create(user_id: 1, history: false)
cart_2 = Cart.create(user_id: 2, history: true)



product_1 = Product.create(name: "gloves", description: 'white', price: 20, number_sold: 30, total_availability: 40, image:'coming-soon', cart_id: nil)
product_2 = Product.create(name: "masks", description: 'white', price: 20, number_sold: 30, total_availability: 40, image:'coming-soon', car_id: nil)


addP_1 = AddProduct.create(cart_id: cart_1, product_id: product_1)
addP_2 = AddProduct.create(cart_id: cart_1, product_id: product_2)

addP_3 = AddProduct.create(cart_id: cart_2, product_id: product_1)


rev_1 = Review.create(user_id: user_1, product_id: product_1, content: "Great gloves", nickname: "Banana", star_rating: 4)
rev_2 = Review.create(user_id: user_1, product_id: product_2, content: "sucks ", nickname: "Banana", star_rating: 4)


rev_3 = Review.create(user_id: user_2, product_id: product_1, content: "so so", nickname: "appple", star_rating: 2)
rev_4 = Review.create(user_id: user_2, product_id: product_2, content: "I wanted them on black", nickname: "apple", star_rating: 5)












