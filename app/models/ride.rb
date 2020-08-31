'bundle install'
require 'pry'

class Ride

    @@all = []

    attr_accessor :driver, :passenger, :distance

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        self.class.all << self
    end

    def self.all
        @@all
    end
end

