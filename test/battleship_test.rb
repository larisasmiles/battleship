require 'minitest/autorun'
require 'minitest/pride'
require './lib/battleship.rb'
require 'pry'

class BattleshipTest < Minitest::Test

  def test_game_exists;
    game = Battleship.new(input, output)
    
    assert_instance_of Battleship, game
  end

  def test_if_P_initiates_start_game
    game = Battleship.new(input, ouput)

    assert_equal
  end
end
