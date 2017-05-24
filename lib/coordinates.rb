class Coordinates
  attr_reader :letters, :numbers, :valid_coordinates

  def initialize
    @letters = ["A", "B", "C", "D"]
    @numbers = ["1", "2", "3", "4"]
    positions_unite
  end

  def positions_unite
    @valid_coordinates = []
    letters.map do |letter|
      numbers.each do |num|
        @valid_coordinates << letter + num
      end
    end
  end
end
