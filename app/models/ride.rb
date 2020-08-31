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
        
    end

    def self.average_driver
    end

end

# binding.pry