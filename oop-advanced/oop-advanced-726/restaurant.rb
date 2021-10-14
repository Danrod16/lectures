require 'pry-byebug'
class Restaurant
  attr_reader :cuisine
  attr_accessor :capacity
  def initialize(capacity, cuisine)
    @capacity = capacity
    @cuisine = cuisine
    @open = false
  end

  def open?
    @open
  end

  def self.categories
    ["Mexican", "Gastronomic", "Asian"]
  end

  def open!
     @open = Time.now.hour >= 9 && Time.now.hour < 21
  end

  def capacity=(input)
    @capacity = input
  end

  def hours_open
    50
  end
end



