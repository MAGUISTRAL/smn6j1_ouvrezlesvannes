# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
10.times do
  user = User.create!(
description: Faker::ChuckNorris.fact,
first_name: Faker::Name.first_name,
last_name: Faker::Name.last_name,
)
end

Event.destroy_all
5.times do
event = Event.create!(
start_date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default),
duration: Faker::Number.between(from: 5, to: 100)*5,
title: Faker::Superhero.name,
description: Faker::Quotes::Shakespeare.hamlet_quote,
price: Faker::Number.between(from: 1, to: 1000),
location: Faker::Address.street_address,
admin_id: User.all.sample.id,
)
end

Attendance.destroy_all
10.times do
attendance = Attendance.create!(
stripe_customer_id: Faker::Number.between(from: 10000, to: 100000),
user_id: User.all.sample.id,
event_id: Event.all.sample.id,
)
end
