# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Car.destroy_all
User.destroy_all
Body.destroy_all
Paint.destroy_all
Wheel.destroy_all
Spoiler.destroy_all

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

b1 = Body.create!(partType: "body", image: "http://localhost:3000/Body1/Body1.jpg", name: 'Body1', speed: 6, efficency: 8, power: 4)
# b2 = Body.create!(partType: "body", image: "http://localhost:3000/Body1/Body1.jpg", name: 'Body1', speed: 4, efficency: 5, power: 6)
# b3 = Body.create!(partType: "body", image: "http://localhost:3000/Body1/Body1.jpg", name: 'Body1', speed: 7, efficency: 3, power: 8)

p1 = Paint.create!(partType: "paint", image: "http://localhost:3000/Body1/Body1_Paints/Body1_(Black).jpg", name: 'Black')
p2 = Paint.create!(partType: "paint", image: "http://localhost:3000/Body1/Body1_Paints/Body1_(Blue).jpg", name: 'Blue')
p3 = Paint.create!(partType: "paint", image: "http://localhost:3000/Body1/Body1_Paints/Body1_(Green).jpg", name: 'Green')
p4 = Paint.create!(partType: "paint", image: "http://localhost:3000/Body1/Body1_Paints/Body1_(Yellow).jpg", name: 'Yellow')
p5 = Paint.create!(partType: "paint", image: "http://localhost:3000/Body1/Body1_Paints/Body1_(Orange).jpg", name: 'Orange')
p6 = Paint.create!(partType: "paint", image: "http://localhost:3000/Body1/Body1_Paints/Body1_(Red).jpg", name: 'Red')
p7 = Paint.create!(partType: "paint", image: "http://localhost:3000/Body1/Body1_Paints/Body1_(Purple).jpg", name: 'Purple')
p8 = Paint.create!(partType: "paint", image: "http://localhost:3000/Body1/Body1_Paints/Body1_(Pink).jpg", name: 'Pink')
p9 = Paint.create!(partType: "paint", image: "http://localhost:3000/Body1/Body1_Paints/Body1_(Teal).jpg", name: 'Teal')
p10 = Paint.create!(partType: "paint", image: "http://localhost:3000/Body1/Body1_Paints/Body1_(White).jpg", name: 'White')

w1 = Wheel.create!(partType: "wheel", image: "http://localhost:3000/Body1/Body1_Wheels/Wheel1.jpg", name: 'Wheels1', speed: 5, efficency: 7, power: 2)
w2 = Wheel.create!(partType: "wheel", image: "http://localhost:3000/Body1/Body1_Wheels/Wheel2.jpg", name: 'Wheels2', speed: 7, efficency: 2, power: 5)

s1 = Spoiler.create!(partType: "spoiler", image: "http://localhost:3000/Body1/Body1_Spoiler/Spoiler1.jpg", name: 'Spoiler1', speed: 3, efficency:7, power: 3)
s2 = Spoiler.create!(partType: "spoiler", image: "http://localhost:3000/Body1/Body1_Spoiler/Spoiler2.jpg", name: 'Spoiler2', speed: 5, efficency:5, power: 5)

c1 = Car.create!(image: "Body1_(Black)_Wheels1_Spoiler1.jpg", name: "Herbie", user_id: u3.id, body_id: b1.id, paint_id: p1.id, wheel_id: w1.id, spoiler_id: s1.id)
c2 = Car.create!(image: "Body1_(Yellow)_Wheels1_Spoiler1.jpg", name: "Lightning", user_id: u3.id, body_id: b1.id, paint_id: p4.id, wheel_id: w1.id, spoiler_id: s2.id)
c3 = Car.create!(image: "Body1_(Green)_Wheels2_Spoiler1.jpg", name: "Turtle Ninja", user_id: u3.id, body_id: b1.id, paint_id: p3.id, wheel_id: w2.id, spoiler_id: s1.id)
c4 = Car.create!(image: "Body1_(Pink)_Wheels1_Spoiler2.jpg", name: "Pink Flash", user_id: u3.id, body_id: b1.id, paint_id: p8.id, wheel_id: w1.id, spoiler_id: s2.id)
c5 = Car.create!(image: "Body1_(Blue)_Wheels2_Spoiler1.jpg", name: "Dream Dash", user_id: u3.id, body_id: b1.id, paint_id: p2.id, wheel_id: w2.id, spoiler_id: s1.id)
c6 = Car.create!(image: "Body1_(Red)_Wheels1_Spoiler1.jpg", name: "Red Rush", user_id: u3.id, body_id: b1.id, paint_id: p6.id, wheel_id: w1.id, spoiler_id: s1.id)
c7 = Car.create!(image: "Body1_(Purple)_Wheels1_Spoiler2.jpg", name: "Purple Rain", user_id: u3.id, body_id: b1.id, paint_id: p7.id, wheel_id: w1.id, spoiler_id: s2.id)
c8 = Car.create!(image: "Body1_(White)_Wheels2_Spoiler2.jpg", name: "Race Angel", user_id: u3.id, body_id: b1.id, paint_id: p10.id, wheel_id: w2.id, spoiler_id: s2.id)
c9 = Car.create!(image: "Body1_(Orange)_Wheels1_Spoiler1.jpg", name: "Sunny-D", user_id: u3.id, body_id: b1.id, paint_id: p5.id, wheel_id: w1.id, spoiler_id: s1.id)
