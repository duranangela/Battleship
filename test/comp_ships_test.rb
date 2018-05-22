require './test/test_helper'
require './lib/comp_ships'

class CompShipsTest < Minitest::Test

  def test_it_exists
    comp = CompShips.new
    assert_instance_of CompShips, comp
  end

  def test_it_can_make_the_small_ship
    comp = CompShips.new
    comp.small_ship
    assert_equal 2, comp.smship.length
  end

  def test_it_can_make_the_big_ship
    comp = CompShips.new
    comp.big_ship
    assert_equal 3, comp.bgship.length
  end

  def test_that_the_two_ships_do_not_overlap
    comp = CompShips.new
    comp.small_ship
    comp.big_ship
    result_array = comp.smship + comp.bgship
    assert_equal 5, result_array.uniq.length
  end

  def test_it_can_make_both_ships_at_once
    comp = CompShips.new
    comp.get_ships
    assert_equal 2, comp.smship.length
    assert_equal 3, comp.bgship.length
  end
  
end
