class Ride
    attr_accessor :passenger, :driver, :distance

    @@all = []

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance.to_f
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.passenger
        @passenger
    end

    def self.driver
        @driver 
    end

    def self.distance
        @distance
    end

    def self.average_distance
        #Returns the average distance across 
        #ALL rides
        self.all.distance.inject(:+) / self.distance.all.length
    end
end

#When time is called
#git add .
#git commit -m 'submission for deadline'
#git push origin <your-name> - this command must be ran while still in the branch <your-name>
#You will never be able to push to master; you will not be able to push to your own branch before time is called.
#Make a pull request from YOUR branch to master, by visiting the github project repository and clicking the green button: "Submit Pull Request"
#Copy the URL (from the address bar) to the pull request, and paste the URL into the submission text box in https://learn.co/assignments in the task for this code challenge.