require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer'

class ComputerTest < Minitest::Test

  def test_if_class_exists
    computer = Computer.new

    assert_instance_of Computer, computer
  end

  def test_if_poss_coords_output
    computer = Computer.new




  end


end
