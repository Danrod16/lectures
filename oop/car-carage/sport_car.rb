class SportCar
  attr_reader :brand, :color
  attr_accessor :start_engine
  # attr_writer :brand, :color

  def initialize(brand, color)
    @brand = brand
    @color = color
    @start_engine = false
  end

  # def start_engine?
  #   return @start_engine
  # end

  # def start_engine
  #   @start_engine = true
  # end

  private

  # def color
  #   return @color
  # end

  # def brand
  #   return @brand
  # end

  # def brand(brand)
  #   @brand = brand
  # end
end
