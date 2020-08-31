require 'pry'
class Ride 
    attr_accessor :passenger, :driver, :distance
    @@all = []
    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver 
        @distance = distance 
        self.class.all << self 
        #binding.pry
    end 

    def self.average_distance(distance)
        sum = 0 
        self.all.each do |miles|
          miles.distance += sum
        end 
     
    end

    def self.all 
        @@all 
    end 

end