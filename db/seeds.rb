# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all 
Group.destroy_all
GroupCzar.destroy_all
GroupRsvp.destroy_all
GroupInvite.destroy_all

10.times do 
    User.create(email: Faker::Internet.email, password: "password", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone)
end

p "You created #{User.count} users"

2.times do
Group.create(title: "#{Faker::GreekPhilosophers.name} Followers" , description: Faker::GreekPhilosophers.quote,  address: Faker::Address.full_address)
end

p "You created #{Group.count} groups"

3.times do
GroupCzar.create(group_id: Group.all.sample.id, user_id: User.all.sample.id, czar_count: rand(3))
end

p "You created #{GroupCzar.count} group czars"

3.times do 
GroupRsvp.create(group_id: Group.all.sample.id, user_id: User.all.sample.id, accecpted:true)
end


p "You created #{GroupRsvp.count} group rsvp's"

4.times do
GroupInvite.create(group_id: Group.all.sample.id, sender_id: User.all.sample.id, receiver_id: User.all.sample.id, accecpted:true)
end

p "You created #{GroupInvite.count} group invites"