Event.destroy_all
User.destroy_all
Attendance.destroy_all
fake_title = ["Blockchain meetup","The hacking project", "Blockchain conférence", "Il ne pourront pas tous nous arrêter", "Gilet jaune acte 1000", "Festival techno", "Festival psytrance", "Séance de Yoga", "Méditation Arc en ciel Guérison", "Lancement de missile nucléaire", "Naruto runner autour de l'élysée" ]
fake_city = ["Marseille","Toulon","Zone 51", "Paris", "Berlin", "Nice", "Monaco", "Toulouse"]
10.times do
admin =  User.create(first_name: Faker::Name.first_name, last_name: "lol", email: (Faker::Name.first_name+"@yopmail.com"), password: "azertyuiop", password_confirmation: "azertyuiop")


test = User.create(first_name: Faker::Name.first_name, last_name: "lol", email: (Faker::Name.first_name+"@yopmail.com"), password: "azertyuiop", password_confirmation: "azertyuiop")
noob = User.create(first_name: Faker::Name.first_name, last_name: "lol", email: (Faker::Name.first_name+"@yopmail.com"), password: "azertyuiop", password_confirmation: "azertyuiop")
noob1 = User.create(first_name: Faker::Name.first_name, last_name: "lol", email: (Faker::Name.first_name+"@yopmail.com"), password: "azertyuiop", password_confirmation: "azertyuiop")

e = Event.create(start_date: Time.now+24.hours, end_date: Time.now+30.hours , title: fake_title.sample, description: "                     "+Faker::Quote.yoda+"     ", price: rand(1..1000), location: fake_city.sample, administrator: admin)
Attendance.create(event: e,noob: noob)
Attendance.create(event: e,noob: noob1)

end
