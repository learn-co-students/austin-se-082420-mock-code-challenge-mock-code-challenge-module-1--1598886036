require 'pry'
class Passenger
    attr_reader: :name

    @@all = []

    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end
    
    def name
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
        if Driver.passenger_names == self
            my_drivers << Driver.name
        end
         my_drivers
        end
    end
    #Would this be a better approach?
        # Driver.select do |driver|
        #     Driver.passenger_names == self
        #   end
        #end
binding.pry
    def self.premium_members
    #Returns an array of all Passengers 
    #who have travelled over 100 miles in 
    #total with the service
   
    end
end

#full disclosure: I don't really understand how to 
#run pry when working with multiple files. Hence, I broke 
#a cardinal rule of coding and did not test my code 
#every step of the way.
 