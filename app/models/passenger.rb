require 'pry'

class Passenger
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def rides 
        Ride.all.map do |rides|
    end

    def drivers

    end

    def total_distance

    end

    def self.premium_members

    end

end