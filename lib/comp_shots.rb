require './lib/player_ships'
require 'pry'

class CompShots
  attr_reader :player_ships

  def initialize
    @player_ships = PlayerShips.new
  end

  def ship_board
    @player_ships.get_ships
  end

  def comp_shot
    message1
    spot = rand(0..15)
    until ['  ', 'S '].include? @player_ships.layout.values[spot]
      spot = rand(0..15)
    end
    shot = @player_ships.layout.keys[spot]
    if player_ships.layout[shot] == 'S '
      player_ships.layout[shot] = 'H '
      puts "\nIt's a hit!\n"
    else
      player_ships.layout[shot] = 'M '
      puts "\nI missed.\n"
    end
    puts "\nYour ships:\n" + player_ships.board
  end

  def message1
    puts "\n\nNow it's my turn!\n"
    print'.'
    sleep 0.5
    print'.'
    sleep 0.5
    print'.'
    sleep 0.5
    print'.'
    sleep 0.5
    puts '.'
  end

end
