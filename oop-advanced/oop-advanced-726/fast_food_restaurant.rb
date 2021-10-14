class FastFoodRestaurant < Restaurant
  def initialize(capacity, cuisine, fast)
    super(capacity, cuisine)
    @fast = false
  end

  # def capacity=(input)
  #   super(input) + 25
  # end

  def hours_open
    super + 5
  end


end
