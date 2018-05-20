require './lib/comp_ships'
require './lib/hitboard'

class PlayerShots
  attr_reader :comp_ships, :hitboard

  def initialize
    @comp_ships = CompShips.new
    @hitboard = HitBoard.new
  end

  def ships
    @comp_ships.get_ships
  end

  def take_shot
    puts @hitboard.board
    puts message1
    shot = gets.chomp
    if @comp_ships.layout[shot] == 'S '
      @hitboard.layout[shot] = 'H '
    else
      @hitboard.layout[shot] = 'M '
    end
    puts @hitboard.board
  end

  def message1
    "Now it's your turn. Please enter a square for your shot: "
  end

end
