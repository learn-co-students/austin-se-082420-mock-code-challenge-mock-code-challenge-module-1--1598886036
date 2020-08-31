class Driver
    attr_accessor :name

    @@all = []
    def initialize (name)
        @name = name
        @@all << self
    end

    def passenger_names
        Ride.all.select {|p| p.driver == self}.select {|p| p.passenger}
    end

    def rides
        Ride.all.select {|d| d.driver == self}
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        Ride.all.select {|rid| rid.distance > distance}
    end


end
