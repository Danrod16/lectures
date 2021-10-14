class GastronomicRestaurant < Restaurant
  def initialize(capacity, cuisine, stars)
    super(capacity, cuisine)
    @stars = stars
    @chef = Chef.new(self)
  end
end
