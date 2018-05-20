require './lib/board'
require './lib/validate_ships'
require 'colorize'
require 'pry'

class PlayerShips < Board
  include ValidateShips
  attr_reader :smship, :bgship

  def initialize
    super
    @smship = []
    @bgship = []
  end

  def get_ships
    puts message1
    small_ship
    puts board
    puts message2
    big_ship
    puts board
  end

  def small_ship
    @smship = gets.chomp.split(' ')
    until validate_small(@smship)
      puts "Invalid choice, please try again: "
      @smship = gets.chomp.split(' ')
    end
    @layout[@smship[0]] = 'S '
    @layout[@smship[1]] = 'S '
  end

  def big_ship
    loop do
      @bgship = []
      @bgship = gets.chomp.split(' ')
      until validate_big(@bgship)
        puts "Invalid choice, please try again: "
        @bgship = gets.chomp.split(' ')
      end
      spot = get_middle_spot(@bgship)
      @bgship << spot
      break if (@smship + @bgship).uniq.length == 5
      puts "Ships can't overlap, please try again: "
    end
    @layout[@bgship[0]] = 'S '
    @layout[@bgship[1]] = 'S '
    @layout[@bgship[2]] = 'S '
  end

  def message1
    "I have laid out my ships on the grid.\nYou now need to layout your two ships.\nThe first is two units long and the second is three units long.\nThe grid has A1 at the top left and D4 at the bottom right.\n\nEnter the two squares for the two-unit ship, for example 'A1 A2': "
  end

  def message2
    "Please enter the first and last squares for the three-unit ship, for example, 'A1 A3': "
  end

end
