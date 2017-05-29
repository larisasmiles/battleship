require './lib/cell.rb'
require './lib/coordinates.rb'
require 'pry'

class Grid
  attr_reader :game_grid, :locations

  def initialize
    @game_grid = []
    @locations = Coordinates.new.valid_coordinates
    create_grid
  end

  def create_grid
    @locations.map do |location|
      @game_grid << Cell.new(location)
    end
  end

  def display_map
    prep_map.each_slice(4) do |slice|
    puts "#{slice.join(" ")}\n"
    end
  end

  def prep_map
    game_grid.map do |cell|
      cell.hit
    end
  end
end
