require './lib/messages'
require './lib/computer'

class Battleship
    attr_reader :computer

  include Messages

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
    computer.place_units
  end
end
b = Battleship.new
b.start_game
