# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

['Breakfast', 'Lunch', 'Dinner', 'Drinks'].each do |section|
  rand(5..10).times do |t|
    Food.create!(name: Faker::Book.title,
                 description: Faker::Hipster.sentence(10),
                 price: Faker::Commerce.price,
                 section: section,
                 img_url: "http://loremflickr.com/318/180/food?#{section}=#{t}")
  end
end
