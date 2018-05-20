require './lib/comp_shots.rb'
require './lib/player_shots.rb'
require './lib/game_over'
require 'pry'

class Play
  include GameOver

  def initialize
    @compshot = CompShots.new
    @playershot = PlayerShots.new
  end

  def play_game
    @playershot.ships
    @compshot.ship_board
    loop do
      @playershot.take_shot
      break if @playershot.hitboard.layout.values.count('H ') == 5
      @compshot.comp_shot
      break if @compshot.player_ships.layout.values.count('H ') == 5
    end
    puts over_winner if @playershot.hitboard.layout.values.count('H ') == 5
    puts over_loser if @compshot.player_ships.layout.values.count('H ') == 5
  end

end
