'bundle install'
require 'pry'

class Passenger

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def Passenger.all     #question: same as self.all??
        @@all
    end

    def new_ride(driver, distance)
       Ride.new(driver, self, distance)
    end
    
    def name
        @name
    end

    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def drivers
        rides.map do |ride|
            ride.driver
        end
    end

    def total_distance
    end
end

