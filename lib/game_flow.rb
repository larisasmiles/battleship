require './lib/board'
class GameFlow
require 'pry'

  def initialize
    @computer_board = Board.new
    @player_board   = Board.new
    game_setup
  end

  def game_setup
    @computer_board.grid
    # binding.pry


  end



  #output the new board game computer board
  #message that computer had placed ships and give them a quick outline of rules
  #method will than go to board.rb
end
