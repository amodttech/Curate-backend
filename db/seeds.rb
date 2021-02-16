# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Exhibition.destroy_all
ExhibitionObject.destroy_all
ArtObject.destroy_all

puts "all records have been destroyed"


aaron = User.create!(username: "Aaron", password: "a", display_name: "A-Tron", bio: "weird stuff always")
roy = User.create!(username: "Roy", password: "a", display_name: "Roy-Toy", bio: "Hot and dangerous")

puts "created user: Aaron"
puts "created user: Roy"

exhibit_1 = Exhibition.create!(user_id: aaron.id, name: "Famous Butts", description: "Nothing Butt the Hits!", theme: "dark")
exhibit_2= Exhibition.create!(user_id: roy.id, name: "Obscure Butts", description: "“Sorry, I’m a little behind.”", theme: "dark")

puts "created exhibition: Famous Butts"
puts "created exhibition: Obscure Butts"

art_1 = ArtObject.create!(met_id: 361640, title: "Sir William Butts", artist: "Wenceslaus Hollar", date: "1649", origin: "Bohemian", image: "https://images.metmuseum.org/CRDImages/dp/original/DP823759.jpg")
art_2 = ArtObject.create!(met_id: 361633, title: "Lady Mary Butts", artist: "Wenceslaus Hollar", date: "1649", origin: "Bohemian", image: "https://images.metmuseum.org/CRDImages/dp/original/DP823762.jpg")

puts "created two Butts"

ExhibitionObject.create!(art_object_id: art_1.id, exhibition_id: exhibit_2.id, order_number: 1, description: "His")
ExhibitionObject.create!(art_object_id: art_2.id, exhibition_id: exhibit_2.id, order_number: 2, description: "Hers")