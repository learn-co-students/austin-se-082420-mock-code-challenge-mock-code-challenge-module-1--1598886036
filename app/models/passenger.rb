require 'pry'
class Passenger 
    attr_reader :name 
    @@all = []
    def initialize(name)
        @name = name 
        self.class.all << self 
    end 

    def rides 
        Ride.all.select do |ride|
            ride.passenger == self
        end 
        
    end 

    def drivers
        Ride.all.select do |pass|
            pass.driver == self 
        end 
    end

    def total_distance 
        sum = 0.0
        Ride.all.each do |pass|
            if pass.passenger == self 
                sum += distance
            end 
        end
        sum 
    end 

    def self.all
        @@all 
    end 

    def self.premium_members
        self.all.select do |m|
            m.distance > 100 
        end 
    end 
end 
