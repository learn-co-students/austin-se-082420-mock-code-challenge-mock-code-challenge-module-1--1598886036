class Driver
    attr_accessor :name

    @@all - []

    def initialize(name)
        @name = name
    end

    def name
        @name
    end

    def self.all
        @@all
    end

    def passenger_names
        #Returns an array of all Passengers' 
        #names a driver has driven. The names 
        #should be **unique** (no repeats)
        passenger_array = Passenger.all.select{|passenger|passenger.driver == self}
        passenger_array.uniq
    end


    def rides 
        #Returns an array of all Rides a 
        #driver has made
        Ride.all.select{|ride|ride.driver == self}
    end

    def self.mileage_cap(distance)
        Ride.all.map do |rides|
            over_mileage = []
            if Ride.distance > distance
                over_milage << ride.driver
            end
            over_mileage
        end
        #Takes an argument of a distance 
        #(float) and returns an array of all 
        #Drivers who have driven over the mileage
    end

   

end