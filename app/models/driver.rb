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

    def passenger_names
        Ride.all.select do |rides|
            rides.map do |ride.driver == self|
            end
        end
    end

    def self.rides(person)
        arr=[]
        Ride.all.each do |ride|
            #binding.pry
            if ride.driver == person
                arr << ride
            else 
                arr << "This driver has not had any drives."
            end
            return arr

        end
    end

    def self.mileage_cap(d_distance)
    end
        


end