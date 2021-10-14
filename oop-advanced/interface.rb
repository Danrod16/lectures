require_relative "fastfood_restaurant"
require_relative "gastronomic_restaurant"

gastro_restaurant = GastronomicRestaurant.new("Baltazar", "Barcelona", 25, "Sam")
fastfood_restaurant = FastfoodRestaurant.new("Mcdonalds", "Paris", 12)

puts gastro_restaurant.name

puts fastfood_restaurant.name

puts gastro_restaurant.open?

puts fastfood_restaurant.open?

puts gastro_restaurant.open!

puts GastronomicRestaurant.categories

puts gastro_restaurant.chef.name
