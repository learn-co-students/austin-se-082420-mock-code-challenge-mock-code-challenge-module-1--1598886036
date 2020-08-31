class Ride
    attr_accessor :driver, :passenger, :distance

    @@all = []
    def initialize (driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def passenger
        @passenger
    end

    def driver
        @driver
    end

    def distance
        @distance
    end

    def self.all
        @@all
    end

    # def self.average_distance
    #     average = 0 
    #     Ride.all.select do |r|
    #         r.distance
    #         sum = sum + r.distance
    
    #      end
    #     sum / (Ride.all.count).to_f
    # end
end
