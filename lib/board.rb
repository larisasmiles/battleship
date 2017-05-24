class Board
    attr_reader :grid

    def initialize
      @grid = initial_grid
    end

  def initial_grid
    #add equals signs in nested array
            [[".", "1", "2", "3", "4"],
            ["A", false, false, false, false],
            ["B", false, false, false, false],
            ["C", false, false, false, false],
            ["D", false, false, false, false]]
  end

  # def computer_ship_placement
  #   computer_board
  #   ship.rb
  #

end
