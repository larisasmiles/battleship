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
end
