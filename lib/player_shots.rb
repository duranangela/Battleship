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
    puts "\nComputer's ships:\n" + @hitboard.board
    puts message1
    shot = gets.chomp.upcase
    if @comp_ships.layout[shot] == 'S '
      @hitboard.layout[shot] = 'H '
      puts "\nIt's a hit!\n"
    else
      @hitboard.layout[shot] = 'M '
      puts "\nYou missed.\n"
    end
  end

  def message1
    "\nIt's your turn. Please enter a square for your shot:"
  end

end
