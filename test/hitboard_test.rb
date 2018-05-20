require './test/test_helper'
require './lib/hitboard'

class HitBoardTest < Minitest::Test

  def test_it_exists
    hits = HitBoard.new
    assert_instance_of HitBoard, hits
  end

end
