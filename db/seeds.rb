Event.destroy_all
User.destroy_all
Attendance.destroy_all

10.times do
admin =  User.create(first_name: Faker::Name.first_name, last_name: "lol", email: (Faker::Name.first_name+"@yopmail.com"), password: "azertyuiop", password_confirmation: "azertyuiop")


test = User.create(first_name: Faker::Name.first_name, last_name: "lol", email: (Faker::Name.first_name+"@yopmail.com"), password: "azertyuiop", password_confirmation: "azertyuiop")
noob = User.create(first_name: Faker::Name.first_name, last_name: "lol", email: (Faker::Name.first_name+"@yopmail.com"), password: "azertyuiop", password_confirmation: "azertyuiop")
noob1 = User.create(first_name: Faker::Name.first_name, last_name: "lol", email: (Faker::Name.first_name+"@yopmail.com"), password: "azertyuiop", password_confirmation: "azertyuiop")

e = Event.create(start_date: Time.now+5.years, end_date: Time.now+6.years , title: Faker::Esport.event, description: "blablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablblablablablablablablablablablablablablablablablablablablablablablablblabl", price: 800, location: "Marseille", administrator: admin)
Attendance.create(event: e,noob: noob)
Attendance.create(event: e,noob: noob1)

end
