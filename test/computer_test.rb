require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer'

class ComputerTest < Minitest::Test

  def test_if_class_exists
    computer = Computer.new

    assert_instance_of Computer, computer
  end

  # def test_if_coords_parse
  #   computer = Computer.new
  #
  #   computer.coords_handler
  #   expected = computer.unit_1
  #   expected_2 = computer.unit_2
  #
  #   assert expected, computer.possible_coords.include?(expected)
  #   assert expected_2, computer.possible_coords.include?(expected_2)
  # end

  def test_if_ai_places_units
    computer = Computer.new
    computer.place_units

    input = computer.grid.game_grid.map.any? { |cell| cell.unit }

    expected = true

    assert_equal expected, input
  end
end
