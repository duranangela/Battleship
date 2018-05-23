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

  def get_input
    puts "\nComputer's ships:\n" + @hitboard.board
    puts message1
    input = gets.chomp.upcase
    take_shot(input)
  end

  def take_shot(input)
    cspace = @comp_ships.layout.find {|spot| spot[1] == input}
    hspace = @hitboard.layout.find {|spot| spot[1] == input}
    if cspace[2] == 'S '
      hspace[2] = 'H '
      puts "\nIt's a hit!\n"
    else
      hspace[2] = 'M '
      puts "\nYou missed.\n"
    end
  end

  def message1
    "\nIt's your turn. Please enter a square for your shot:"
  end

end
