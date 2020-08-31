require 'pry'
require_relative './driver.rb'
require_relative './passenger.rb'

# #### Ride

class Ride 
    attr_accessor :driver, :passenger, :distance
    @@all =[]

    def initialize(driver, passenger, distance)
        @driver=driver
        @passenger=passenger
        @distance=distance.to_f

        @@all << self
    end
    
    def self.all
        @@all
    end

    def self.passenger
        self.passenger
    end

    def self.driver
        self.driver
    end

    def self.distance
        self.distance
    end

    def self.average
        # binding.pry
        i =0
        n = 0
        all.each do |ride|
            i += ride.distance
            n += 1
        end
        return (i/n)
    end


end

p1 = Passenger.new("Jake")
d1 = Driver.new("Juanito")
d2 = Driver.new("John")
r1 = Ride.new(d1,p1,"20")
r2 = Ride.new(d1,p1,"10")

binding.pry

return "All done!"