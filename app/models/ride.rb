require 'pry'

class Ride
    attr_accessor :driver, :passenger, :distance

    @@all = []
    
    def initialize(driver, passenger, distance=0)
        @driver = driver
        @passenger = passenger
        @distance = distance
        
        @@all << self
    end

    def self.all
        @@all
    end

    def passenger
        Passenger.all.each do |passenger|
            passenger.name == self.passenger.name
            passenger
            binding.pry
        end
    end

    def driver
        Driver.all.each do |driver|
            driver.name == self.driver.name
            driver
        end
    end

    def distance
        self.distance.to_f
    end

    def self.average_distance
        # returns average distance
        self.all.each do |rides|
            total = (rides.distance[0] + rides.distance[1] + rides.distance[2]).to_f
            if total /= rides.length
                average_distance = total
                # binding.pry
            end
            # binding.pry
        end
    end

end

# binding.pry