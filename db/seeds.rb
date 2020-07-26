# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all

P = 10

product = Array.new(P)

P.times do |p|
	product[p] = Product.create(
		title: Faker::Food.fruits,
		description: Faker::Quote.famous_last_words,
		image_url: Faker::LoremPixel.image(size: "300x200", is_gray: false, category: 'food', number: p+1 ),
		price: 10.0 + Random.rand(100)
	)
end