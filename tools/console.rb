require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


alec = Passenger.new("alec") 
jane = Passenger.new("jane")
john = Driver.new("john")
joe = Driver.new("joe")

alec.new_ride(john, 15)
alec.new_ride(joe, 5)
jane.new_ride(john, 10)
jane.new_ride(joe, 8)


binding.pry
