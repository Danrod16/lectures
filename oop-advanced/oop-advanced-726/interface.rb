require_relative 'Restaurant'
require_relative 'fast_food_restaurant'
require_relative 'gastronomic_restaurant'
require_relative 'chef'

mcdonalds = FastFoodRestaurant.new(20, "fast-food", true)
# p mcdonalds.open!
# puts "open:"
# p mcdonalds.open?
# p "cusine: "
# p mcdonalds.cuisine
# mcdonalds.capacity = 35
# p mcdonalds.capacity
p mcdonalds.hours_open
puts " ------------"

disfrutar = GastronomicRestaurant.new(50, "molecular", 5)


p disfrutar

#  p Restaurant.categories
