require_relative "chef"
require_relative "restaurant"

class GastronomicRestaurant < Restaurant
  attr_reader :chef

  def initialize(name, city, tables, chef_name)
    super(name, city, tables)
    @chef = Chef.new(chef_name, self)
  end

  def self.categories
    return ["Entrée", "main dish", "Dessert"]
  end
end
