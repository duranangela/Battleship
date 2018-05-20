require './test/test_helper'
require './lib/player_shots'

class PlayerShotsTest < Minitest::Test

  def test_it_exists
    shots = PlayerShots.new
    assert_instance_of PlayerShots, shots
  end
  
end
