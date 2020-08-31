require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cory = Passenger.new("Cory Simone")
teddy = Passenger.new("Teddy Bear")
porkers = Passenger.new("Porkers")

john = Driver.new("John Lonetree (no relation)")
chad = Driver.new("Chadly Chadderton")

cambridge = Ride.new(john, cory, 25)
dayton = Ride.new(chad, teddy, 50)
porksburg = Ride.new(john, porkers, 100)

binding.pry
0