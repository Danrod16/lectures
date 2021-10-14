class Patient
  attr_reader :cured, :name
  attr_accessor :room
  def initialize(attributes = {})
    @name = attributes[:name]
    @cured = attributes[:cured] || false
  end

  def cure
    @cured = true
  end
end
