require './test/test_helper'
require './lib/board'

class BoardTest < Minitest::Test

  def test_it_exists
    board = Board.new
    assert_instance_of Board, board
  end

  def test_it_makes_a_board
    board = Board.new
    assert_equal "==========\n. 1 2 3 4 \nA         \nB         \nC         \nD         \n==========", board.board
  end

end
