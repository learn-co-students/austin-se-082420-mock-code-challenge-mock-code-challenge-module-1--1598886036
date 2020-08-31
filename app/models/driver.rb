require 'pry'

class Driver
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def passenger_names
        Passenger.all.map do |passenger|
            passenger.name.uniq
        end
    end

    def rides
        Ride.all.map do |rides|
            rides.driver
    end

    def self.milage_cap(distance)
        distance = 50

        Ride.all.map do |rides|
        end

    end
end
