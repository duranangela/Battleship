require './test/test_helper'
require './lib/play.rb'

class PlayTest < Minitest::Test

  def test_it_exists
    game = Play.new
    assert_instance_of Play, game
  end

end
