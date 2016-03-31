# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
m = 0

5.times do |i|
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

  3.times do |j|
  
  title = Faker::Lorem.word.capitalize
  course_id = i + 1

  Section.create!(
    title: title,
    course_id: course_id
    )

  m += 1

    2.times do |n|
   
    title = Faker::Lorem.word.capitalize
    subtitle = Faker::Lorem.sentence(3)
    section_id = m

    Lesson.create(
      title: title,
      subtitle: subtitle,
      section_id: section_id
      )

    end

  end

end

