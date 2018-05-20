require './lib/comp_ships'

class PlayerShots
  attr_reader :comp_ships

  def initialize
    @comp_ships = CompShips.new
  end

  def ships
    @comp_ships.get_ships
  end

  def take_shot
    puts @comp_ships.board
    puts message1
    
  end

  def message1
    "Now it's your turn. Please enter a square for your shot: "
  end

end
