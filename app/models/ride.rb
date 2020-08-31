class Ride
    attr_accessor :driver, :passenger, :distance
    @@all = []
    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        self.all.map do |ride|
            ride.distance
        end.inject(0, :+) / self.all.count
    end
end
