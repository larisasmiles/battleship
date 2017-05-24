require './lib/message'
require './lib/game_flow'
class Battleship

  def initialize
    @message  = Message.new
  end

  def start_game
    @message.welcome
    input = gets.chomp
    if input == ("p") || input == "play"
      play_game
    elsif input == ("i") || input == "instructions"
      messager.game_overview
    else
      messager.game_over
    end
  end

  def play_game
    new_game = GameFlow.new
  end

  def computer_ship_placement
    #computer player will place their ships
    #baseline computer should use random placements
    #need to validate ship coords

    @message.computer_initiate_game
  end

  def player_ship_placement
  end
end

b = Battleship.new
b.start_game
