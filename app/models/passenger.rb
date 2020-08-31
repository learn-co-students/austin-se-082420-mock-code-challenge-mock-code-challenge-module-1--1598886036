require 'pry'

# #### Passenger

# - `Passenger#rides`
#   - Returns an array of Ride instances that this person has been on
# - `Passenger#drivers`
#   - Returns an array of Driver instances that this person has rode with
# - `Passenger#total_distance`
#   - Returns the floating number that represents the total distance the passenger has travelled using the service
# - `Passenger.premium_members`
#   - Returns an array of all Passengers who have travelled over 100 miles in total with the service

class Passenger 
    attr_accessor
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.name
        self.name
    end

    def self.all
        @@all
    end

    def self.rides
        binding.pry
        puts "Hi"
    end



end