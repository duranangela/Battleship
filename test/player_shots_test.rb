require './test/test_helper'
require './lib/player_shots'

class PlayerShotsTest < Minitest::Test

  def test_it_exists
    shots = PlayerShots.new
    assert_instance_of PlayerShots, shots
  end

  def test_it_can_get_comp_ships
    shots = PlayerShots.new
    shots.ships
    assert_equal 2, shots.comp_ships.smship.length
    assert_equal 3, shots.comp_ships.bgship.length
  end

end
