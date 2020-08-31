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

    def self.average_distance
        average = 0 
        Ride.all.select do |r|
            if r.distance > 0
                average = average + r.distance
            end
         end
        average / (Ride.all.count).to_f
    end
end
