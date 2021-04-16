# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Body.destroy_all
Paint.destroy_all
Wheel.destroy_all
Spoiler.destroy_all
Car.destroy_all

u1 = User.create!(name: 'Abraham', username: "abraham", password: "789", age: 14, email: 'FreshOutTheOven@gmail.com')
u2 = User.create!(name: 'Griffin', username: "griffin", password: "301", age: 13, email: 'dagriffinater@gmail.com')
u3 = User.create!(name: 'Adam', username: "adam", password: "425", age: 17, email: 'AdamEveGardenSus@gmail.com')
u4 = User.create!(name: 'Emily', username: "emily", password: "2527", age: 18, email: 'em8cake@gmail.com')
u5 = User.create!(name: 'James', username: "chow", password: "69420", age: 28, email: 'chowjameskim@gmail.com')
u6 = User.create!(name: 'Alex', username: "alex", password: "2678", age: 26, email: 'alexmix@gmail.com')
u7 = User.create!(name: 'Kevin', username: "kevin", password: "007", age: 16, email: 'kevintheman117@gmail.com')
u8 = User.create!(name: 'Lilah', username: "lilah", password: "303", age: 10, email: 'lilahdog@gmail.com')
u9 = User.create!(name: 'Etzio', username: "Etzio", password: "515", age: 8, email: 'etziopupper@gmail.com')
u10 = User.create!(name: 'Gavin', username: "gavin", password: "696", age: 25, email: 'gavintrooper@gmail.com')
u11 = User.create!(name: 'Erick', username: "erick", password: "6405", age: 15, email: 'erickstorm@gmail.com')
u12 = User.create!(name: 'Leo', username: "leo", password: "1108", age: 12, email: 'leoman@gmail.com')

b1 = Body.create!(name: 'Body 1', speed: 2, efficency: 6, power: 3)
b2 = Body.create!(name: 'Body 2', speed: 4, efficency: 2, power: 7)

p1 = Paint.create!(name: 'Blue')
p2 = Paint.create!(name: 'Red')

w1 = Wheel.create!(name: 'Wheel 1', speed: 5, efficency: 7, power: 2)
w2 = Wheel.create!(name: 'Wheel 2', speed: 4, efficency: 4, power: 0)

s1 = Spoiler.create!(name: 'Spoiler 1', speed: 3, efficency:7, power: 3)
s2 = Spoiler.create!(name: 'Spoiler 2', speed: 5, efficency:10, power: 1)

c1 = Car.create!(name: "Herbie", user_id: u3.id, body_id: b2.id, paint_id: p1.id, wheel_id: w1.id, spoiler_id: s2.id)
