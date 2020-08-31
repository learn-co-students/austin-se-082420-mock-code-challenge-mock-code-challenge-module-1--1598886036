
class Passenger
    attr_reader: :name

    @@all = []

    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end
    
    def self.name
        @name
    end

    def self.rides
    #Returns an array of Ride instances 
    #that this person has been on
    Ride.all.select{|ride|Ride.passenger = self}
    end
    
    def self.drivers
    #Returns an array of Driver instances
    # that this person has rode with
    Driver.all.map do |driver|
        my_drivers = []
        if Driver.passenger == self
            my_drivers << self
        end
    my_drivers
    end
    end

    def self.premium_members
    #Returns an array of all Passengers 
    #who have travelled over 100 miles in 
    #total with the service

    end
end