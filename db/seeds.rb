# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])



puts "🐕 Seeding data..."

User.create(username: "Luke", email:"luke@gmail.com",     password:"lukasam", password_confirmation:"lukasam")
User.create(username: "mahrez", email:"mahrez@gmail.com",   password:"mahrezali", password_confirmation:"mahrezali")
User.create(username: "dembele", email:"dembele@gmail.com",  password:"dembelee", password_confirmation:"dembelee")
User.create(username: "dele",  email:"dele@gmail.com",    password:"deleali", password_confirmation:"deleali")
User.create(username: "maahir", email:"maahir@gmail.com",   password:"mahrezy", password_confirmation:"mahrezy")


puts "✅ Done seeding!"
#   Character.create(name: "Luke", movie: movies.first)

order1=Order.create(package_type:"glass", pick_up_location:"Nairobi", drop_off_location:"Eldoret" ,date:"10/12/2022" , receiver_name:"Sugut Anne", number_of_kgs:"2")
order2=Order.create(package_type:"electronic", pick_up_location:"London", drop_off_location:"Busia", date:"5/12/2022", receiver_name:"Okoth Alex",number_of_kgs:"10")
order3=Order.create(package_type:"plastics", pick_up_location:"Kinoo", drop_off_location:"Kisumu", date:"23/12/2022", receiver_name:"Moha Ali", number_of_kgs:"30")
order4=Order.create(package_type:"boxes", pick_up_location:"Uthiru" ,drop_off_location:"Kigali", date:"1/1/2022", receiver_name:"Wanyama Victor" ,number_of_kgs:"28")
