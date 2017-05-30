require './lib/messages'
require './lib/computer'
require './lib/player'
require './lib/board'

class Battleship
  attr_reader :computer
  include Messages
  include Board

  def start_game
    welcome_message
    input = gets.chomp.downcase
    if input == ("p") || input == "play"
      play_game
    elsif input == ("i") || input == "instructions"
      instructions
      start_game
    elsif input == ("q") || input == "quit"
      end_game
    else
      p "invalid choice soldier"
      start_game
    end
  end

  def play_game
    @computer = Computer.new
    @player = Player.new
    @computer.place_units
    print display_grid
    ai_message
    player_input = gets.chomp.upcase
    @player.parse_coords(player_input)
    # computer.grid.display_map
  end
end
b = Battleship.new
b.start_game
