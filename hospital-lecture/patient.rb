class Patient
  attr_reader :name, :age, :disease, :cured
  attr_accessor :room, :id

  def initialize(attr = {})
    @name = attr[:name]
    @age = attr[:age]
    @disease = attr[:disease]
    @cured = attr[:cured] || false
  end

  def cure
    @cured = true
  end
end




