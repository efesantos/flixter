# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |n|
  title = Faker::Lorem.word.capitalize
  description = Faker::Lorem.paragraph(5)
  cost = rand(0...10)
  user_id = rand(1..2)

  Course.create!(
    title: title,
    description: description,
    cost: cost,
    user_id: user_id 
  )

end