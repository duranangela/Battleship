require './test/test_helper'
require './lib/comp_shots'

class CompShotsTest < Minitest::Test

  def test_it_exists
    comp = CompShots.new
    assert_instance_of CompShots, comp
  end
  
end
