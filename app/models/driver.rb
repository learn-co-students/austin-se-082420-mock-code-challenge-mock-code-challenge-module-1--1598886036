require 'pry'
# #### Driver
# - `Driver#passenger_names`
#   - Returns an array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).
# - `Driver#rides`
#   - Returns an array of all Rides a driver has made
# - `Driver.mileage_cap(distance)`
#   - Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage

class Driver
    attr_reader :name

    @@all = []

    def initialize(name)
        @name=name
        @@all << self
    end

    def self.name
        self.name
    end

    def self.all
        @@all
    end

    def self.passenger_names
        binding.pry
    end

    def self.rides
        self.collect do |ride|
            binding.pry
        end
    end

end