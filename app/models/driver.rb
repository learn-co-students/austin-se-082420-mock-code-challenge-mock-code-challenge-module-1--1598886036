'bundle install'
require 'pry'

class Driver
    
    @@all = []

    attr_reader :name

    def initialize (name)
        @name = name
        self.class.all << self
    end

     def Driver.all     #question: same as self.all??
        @@all
    end

    def new_ride(passenger, distance)
        Ride.new(self, passenger, distance)
    end

    def name
        @name
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def passenger_names
        rides.map do |ride|
            ride.passenger
        end
    end
end
