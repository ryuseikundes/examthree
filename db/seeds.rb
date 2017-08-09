100.times do |n|
  email = Faker::Internet.email
  password = "password"
  nutzer = User.create!(email: email,
               password: password,
               password_confirmation: password,
               )
  topic = Topic.create!(title: "AAA",
               content: "BBB",
               user_id: nutzer.id
               )
    2.times do
      topic.comments.create!(content: "EEEEE")
    end
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
