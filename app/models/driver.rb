class Driver 
    attr_accessor :name 
    @@all = []
    def initialize(name)
        @name = name 
        self.class.all << self 
    end 

    def passenger_names
        pass = Ride.all.select do |name|
            name.passenger == self
        end 
        pass.uniq
    end 


    def rides 
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    
    def self.all
        @@all 
    end 

    def self.mileage_cap(distance)
        self.all.select do |miles|
            miles.distance > distance 
        end 
    end 
end
