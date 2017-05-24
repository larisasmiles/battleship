require "pry"
class Board

    attr_reader :grid

    def initialize
      @grid = initial_grid
      # @2_unit_positions  = []
      # @3_unit_postitions = []
    end

  def initial_grid
    border
    # ". 1 2 3 4" "\n"
    # ["A", [false, nil], [false, nil], [false, nil], [false, nil]] + "\n"
    # ["B", [false, nil], [false, nil], [false, nil], [false, nil]] + "\n"
    # ["C", [false, nil], [false, nil], [false, nil], [false, nil]] + "\n"
    # ["D", [false, nil], [false, nil], [false, nil], [false, nil]] + "\n"
    # border
  end

  def border
    puts "=" * 11
  end


  # def computer_ship_placement
  #   computer_board.two_unit
  #   computer_board.three_unit
  #
  #   ship.rb


end
