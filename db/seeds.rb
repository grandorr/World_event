Event.destroy_all
User.destroy_all
Attendance.destroy_all

10.times do
admin =  User.create(first_name: Faker::Name.first_name, last_name: "lol", email: (Faker::Name.first_name+"@yopmail.com"))


test = User.create(first_name: "Jo", last_name: "spad", email: "joshuanspada@yopmail.com")
noob = User.create(first_name: Faker::Name.first_name, last_name: "mich", email: (Faker::Name.first_name+"@yopmail.com"))
noob1 = User.create(first_name: Faker::Name.first_name, last_name: "mich", email: (Faker::Name.first_name+"@yopmail.com"))

e = Event.create(start_date: Time.now+5.years, duration: 55, title: Faker::Esport.event, description: "blablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablblablablablablablablablablablablablablablablablablablablablablablablblabl", price: 800, location: "Marseille", administrator: admin)
Attendance.create(event: e,noob: noob)
Attendance.create(event: e,noob: noob1)

end
