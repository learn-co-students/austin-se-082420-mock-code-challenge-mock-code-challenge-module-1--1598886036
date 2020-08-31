require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

d1 = Driver.new("Mako")
d2 = Driver.new("Zuko")
d3 = Driver.new("Pabu")

p1 = Passenger.new("Korra")
p2 = Passenger.new("Tenzin")
p3 = Passenger.new("Bolin")

r1 = Ride.new(d1, p1, 12.2)
r2 = Ride.new(d2, p2, 2.3)
r3 = Ride.new(d3, p3, 3.7)
r4 = Ride.new(d3, p1, 5.7)
r5 = Ride.new(d2, p2, 104.6)

binding.pry
