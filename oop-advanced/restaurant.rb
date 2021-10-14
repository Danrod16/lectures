class Restaurant
  attr_reader :name, :city, :tables
  def initialize(name, city, tables)
    @name = name
    @city = city
    @tables = tables
    @open = false
  end

  def open?
    return @open
  end

  def open!
    @open = true
  end
end
