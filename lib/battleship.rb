require './lib/messages'
require './lib/game_flow'

class Battleship

  include Messages

  def initialize

  end

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
