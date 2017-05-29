require './lib/grid'

class Computer
  attr_reader :grid, :possible_coords, :unit_1, :unit_2

  def initialize
    @grid = Grid.new
    @possible_coords = ["A1 A2", "A2 A3", "A3 A4", "B1 B2", "B2 B3", "B3 B4", "C1 C2", "C2 C3",
      "C3 C4", "D1 D2", "D2 D3", "D3 D4", "A1 B1", "A2 B2", "A3 B3", "A4 B4", "B1 C1", "B2 C2",
      "B3 C3", "B4 C4", "C1 D1", "C2 D2", "C3 D3", "C4 D4"]
  end

  def first_ship
    @possible_coords.sample
  end

  def parse_coords
    first_ship.split
  end

  def coords_handler
    coords = parse_coords
    @unit_1 = coords[0]
    @unit_2 = coords[1]
    return nil
  end

  def place_units
    coords_handler
    grid.game_grid.each do |cell|
      if cell.location == @unit_1 || cell.location == @unit_2
        cell.unit = true
      end
    end
  end
end
