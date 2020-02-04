class Cult
  attr_accessor :name, :location, :founding_year, :slogan, :minimum_age

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @minimum_age = minimum_age
    @@all << self
  end

  def self.all
    @@all
  end

  def recruit_follower(follower)
    Cult.new(name, location, founding_year, slogan)
end
