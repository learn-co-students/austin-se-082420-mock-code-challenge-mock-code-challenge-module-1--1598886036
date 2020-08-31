class Passenger
attr_reader :name

    @@all = []
    def initialize (name)
        @name = name
        @@all << self
    end

    def name
        @name
    end

    def rides
     Ride.all.select {|p| p.passenger == self}
    end

    def drivers
        Ride.all.select do |d| 
            if d.passenger == self
                return d.driver
             end
        end
    end

    def total_distance
     sum = 0
         Ride.all.select do |r|
            if r.passenger == self
             sum = sum + r.distance
            end
         end
        sum
    end

    def self.all
     @@all
    end

    def self.premium_members
         Passenger.all.select do |rider|
            rider.total_distance > 100.0
        end
    end



end
