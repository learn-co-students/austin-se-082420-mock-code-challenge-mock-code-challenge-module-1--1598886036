require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

driver_one = Driver.new('Devin')
driver_two = Driver.new('Brendan')
driver_three = Driver.new('Karley')
driver_four = Driver.new('Hermione')

passenger_one = Passenger.new('Cypher')
passenger_two = Passenger.new('Brimstone')
passenger_three = Passenger.new('Viper')
passenger_four = Passenger.new('Reyna')

ride_one = Ride.new(driver_two, passenger_two, 28.16)
ride_two = Ride.new(driver_two, passenger_one, 5.23)
ride_three = Ride.new(driver_one, passenger_four, 32.39)
ride_four = Ride.new(driver_three, passenger_three, 18.89)
ride_five = Ride.new(driver_four, passenger_two, 109.23)
ride_six = Ride.new(driver_one, passenger_three, 86.30)
ride_one = Ride.new(driver_two, passenger_two, 50.32)

binding.pry
