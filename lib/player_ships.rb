require './lib/board'
require './lib/validate_ships'
require 'pry'

class PlayerShips < Board
  include ValidateShips

  def initialize
    super
  end

  def get_2ship
    puts message1
    spot1 = gets.chomp.chars
    validate_exists(spot1)
    @layout[spot1] = 'S '
    puts message2
    spot2 = gets.chomp.chars
    validate_exists(spot2)
    # validate_place(spot1, spot2)
    @layout[spot2] = 'S '

    puts board
  end

  def message1
    "I have laid out my ships on the grid.\nYou now need to layout your two ships.\nThe first is two units long and the second is three units long.\nThe grid has A1 at the top left and D4 at the bottom right.\n\nEnter the first square for the two_unit ship: "
  end

  def message2
    "Enter the second square.\nIt must be adjacent to the first square: "
  end

end
