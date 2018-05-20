require './lib/comp_shots.rb'
require './lib/player_shots.rb'

class Play

  def initialize
    @compshot = CompShots.new
    @playershot = PlayerShots.new
  end

  def play_game
    @playershot.ships
    @compshot.ship_board

    @playershot.take_shot
    @compshot.comp_shot
  end
  
end
