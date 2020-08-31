require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
shaggy = Passenger.new("Shaggy")
scooby = Passenger.new("Scooby")
velma = Passenger.new("Velma")
scrappy = Passenger.new("Scrappy")
fred = Driver.new("Fred")
daphne = Driver.new("Daphne")
r1 = Ride.new(shaggy, fred, 13.1)
r2 = Ride.new(scooby, daphne, 53.7)
r3 = Ride.new(velma, fred, 26.2)
r4 = Ride.new(scrappy, daphne, 78.6)
binding.pry
