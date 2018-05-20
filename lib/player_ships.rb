require './lib/board'
require './lib/validate_ships'
require 'pry'

class PlayerShips < Board
  include ValidateShips
  attr_reader :smship, :bgship

  def initialize
    super
    @smship = []
    @bgship = []
  end

  def get_small_ship
    puts message1
    @smship = gets.chomp.split(' ')
    until validate_small(@smship)
      puts "Invalid choice, please try again: "
      @smship = gets.chomp.split(' ')
    end
    @layout[@smship[0]] = 'S '
    @layout[@smship[1]] = 'S '
    puts board
  end

  def message1
    "I have laid out my ships on the grid.\nYou now need to layout your two ships.\nThe first is two units long and the second is three units long.\nThe grid has A1 at the top left and D4 at the bottom right.\n\nEnter the squares for the two_unit ship, for example 'A1 A2': "
  end

  def message2

  end

end
