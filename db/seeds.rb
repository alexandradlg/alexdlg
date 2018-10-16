# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do |_i|
  Studio.create(name: Faker::FunnyName.name.to_s, price: Faker::Commerce.price(900..1500))
  Tenant.create(email: Faker::Internet.email.to_s)
end

1000.times do |_i|
  date = Faker::Date.forward(30)
  Stay.create(start_date: date, end_date: date + rand(15..365).days, tenant_id: Tenant.find(rand(1..10)).id, studio_id: Studio.find(rand(1..10)).id)
end
