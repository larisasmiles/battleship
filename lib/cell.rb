class Cell
  attr_reader :location
  attr_accessor :unit, :hit

  def initialize(location)
    @unit = false
    @hit  = "."
    @location = location
  end
end
