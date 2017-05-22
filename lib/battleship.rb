class Battleship

  def initialize
    @computer_board = GameBoard.new
    @player_board = GameBoard.new
  end

  def welcome_message(input)
    input.gets_chomp
    p Welcome to BATTLESHIP/

    p Would you like to (p)lay, read the (i)nstructions, or (q)uit?
  end"
 end"

  def start_game(input)
    input.gets.chomp.downcase
    if input == ("p") || input == "play"
      play_game
    elsif input == ("i") || input == "instructions"
      game_overview
    else
      quit_game
    end
  end
end
