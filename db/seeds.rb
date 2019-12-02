# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'pry'

User.destroy_all
Post.destroy_all

5.times do
  User.create(email: Faker::Internet.email,
              password: Faker::Internet.password,
              username: Faker::Name.first_name,
end
# User.find_each(&:save)
puts 'Users created'


10.times do 
  Post.create(title: Faker::Quote.robin, 
              content: Faker::Movies::PrincessBride.quote,
              user: User.all.to_a.sample)
end
puts 'Posts created'

