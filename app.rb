require_relative "lib/user.rb"
require_relative "lib/event.rb"
require_relative "lib/organised.rb"


Maxime = User.new("Maxime@Maxime.com","")
Marion = User.new("Marion@Marion.com","Marion")
Thomas = User.new("Thomas@Thomas.com","Thomas")
Enzo = User.new("Enzo@Enzo.com","Enzo")

Maxime = User.find_by_email("Maxime@Maxime.com")
Marion = User.find_by_email("Marion@Marion.com")
Thomas = User.find_by_email("Thomas@Thomas.com","Thomas")
Enzo = User.find_by_email("Enzo@Enzo.com","Enzo")

e = Event.new("2019-01-13 09:00", 10, "standup quotidien", [Maxime, Marion, Thomas, Enzo])
puts "Voici l'email du premier attendee de l'événement : #{e.attendees.first.email}"
