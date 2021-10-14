class Car
  attr_accessor :color, :brand
  def initialize(color, brand)
    # state
    @color = color
    @brand = brand
  end
  # Behavior
  # def color
  #   return @color
  # end

  # def brand
  #   return @brand
  # end

  # def color(new_color)
  #   @color = new_color
  # end
end
