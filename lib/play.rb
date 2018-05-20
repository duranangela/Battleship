require './lib/comp_shots.rb'
require './lib/player_shots.rb'
require 'pry'

class Play

  def initialize
    @compshot = CompShots.new
    @playershot = PlayerShots.new
  end

  def play_game
    @playershot.ships
    @compshot.ship_board
    time = Time.now
    num_shots = 0
    loop do
      @playershot.take_shot
      num_shots +=1
      break if @playershot.hitboard.layout.values.count('H ') == 5
      @compshot.comp_shot
      break if @compshot.player_ships.layout.values.count('H ') == 5
    end
    winner(time, num_shots) if @playershot.hitboard.layout.values.count('H ') == 5
    loser(time, num_shots) if @compshot.player_ships.layout.values.count('H ') == 5
  end

  def winner(time, num_shots)
    minutes = ((Time.now - time)/60).to_i
    seconds = ((Time.now - time) % 60).to_i
    puts "\nYou've sunk all of my ships, congratulations! You took #{num_shots} shots over #{minutes} minutes, #{seconds} seconds. \n\n"
  end

  def loser(time, num_shots)
    minutes = ((Time.now - time)/60).to_i
    seconds = ((Time.now - time) % 60).to_i
    puts "\nSorry, but I've sunk all of your ships. I took #{num_shots} shots over #{minutes} minutes and #{seconds} seconds. Better luck next time! \n\n"
  end

end
