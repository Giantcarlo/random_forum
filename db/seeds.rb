# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Post.destroy_all
Comment.destroy_all

5.times do
  User.create(email: Faker::Internet.email,
              password: Faker::Internet.password,
              username: Faker::Name.first_name
              )
end
puts 'Users created'


10.times do 
  Post.create(title: Faker::Quote.robin, 
              content: Faker::Movies::PrincessBride.quote,
              user: User.all.to_a.sample
              )
end
puts 'Posts created'

20.times do 
  Comment.create(
              content: Faker::Movies::PrincessBride.quote,
              user: User.all.to_a.sample,
              post: Post.all.to_a.sample
              )
end
puts 'Comments created'


User.create(
  email: "stine@yopmail.com",
  password: "gumshoe",
  username: "Stine"
)
puts 'Admin created'