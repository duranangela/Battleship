require './lib/player_ships'

class PlayerShipsTest < Minitest::Test

  def test_it_exists
    player = PlayerShips.new
    assert_instance_of PlayerShips, player
  end

end
