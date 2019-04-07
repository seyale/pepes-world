require 'date'

puts '🛀 Cleaning your database...'

puts '🧙🏻‍♂️ Cleaning events'
Event.destroy_all

puts 'Creating Events...'
first = Event.new
first.title = "Ready to roll."
first.date = DateTime.parse("05/04/2019 17:00", "%m/%d/%Y %H:%M")
first.place = "Vienna"
first.description = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
first.kid_id = 1
first.user_id = 1
first.remote_photo_url = "https://res.cloudinary.com/dpidgo9hx/image/upload/v1554645885/julie-johnson-692218-unsplash.jpg"
first.save

second = Event.new
second.title = "Ready to roll."
second.date = DateTime.parse("31/03/2019 17:00", "%m/%d/%Y %H:%M")
second.place = "Vienna"
second.description = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
second.kid_id = 1
second.user_id = 1
second.remote_photo_url = "https://res.cloudinary.com/dpidgo9hx/image/upload/v1554645980/brytny-com-616575-unsplash.jpg"
second.save

third = Event.new
third.title = "Cleaned the books."
third.date = DateTime.parse("31/01/2018 17:00", "%m/%d/%Y %H:%M")
third.place = "Mondsee"
third.description = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
third.kid_id = 2
third.user_id = 1
third.remote_photo_url = "https://res.cloudinary.com/dpidgo9hx/image/upload/v1554646162/brina-blum-767639-unsplash.jpg"
third.save

fourth = Event.new
fourth.title = "Fell, stood up, fell, stoop up, fell, ..., walked away."
fourth.date = DateTime.parse("31/12/2018 17:00", "%m/%d/%Y %H:%M")
fourth.place = "Mondsee"
fourth.description = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
fourth.kid_id = 2
fourth.user_id = 1
fourth.remote_photo_url = "https://res.cloudinary.com/dpidgo9hx/image/upload/v1554646148/priscilla-du-preez-234148-unsplash.jpg"
fourth.save

fifth = Event.new
fifth.title = "Went out with daddy tonight."
fifth.date = DateTime.parse("13/12/2018 17:00", "%m/%d/%Y %H:%M")
fifth.place = "Wien"
fifth.description = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
fifth.kid_id = 1
fifth.user_id = 1
fifth.remote_photo_url = "https://res.cloudinary.com/dpidgo9hx/image/upload/v1554646141/troy-t-1148181-unsplash.jpg"
fifth.save

puts "🍻 Events created"
