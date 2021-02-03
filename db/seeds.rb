# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Exhibition.destroy_all
ExhibitionObject.destroy_all
ArtObject.destroy_all

puts "all records have been destroyed"


aaron = User.create(username: "A-Tron", password: "a", display_name: "Aaron", bio: "Art Robot")

puts "created user: Aaron"

butts = Exhibition.create(user_id: aaron.id, name: "Famous Butts", description: "The eternal subject", theme: "dark")

puts "created exhibition: Famous Butts"

# 5.times do {
#     ArtObject.create(met_id: , title: "", artist: "", date: "", origin: "", image: "", description: "")
# }

# order_nums = [1, 2, 3, 4, 5]

# 5.times do {
#     ExhibitionObject.create(art_object_id: ArtObject.all.sample(), )
# }