require './lib/board'
require './lib/validate_ships'

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
    puts "\n" + board + "\n"
    small_ship
    puts "\nYour ships:" + board + "\n"
    puts message2
    big_ship
    puts "\nYour ships:" + board + "\n"
  end

  def small_ship
    @smship = gets.chomp.upcase.split(' ')
    until validate_spots(@smship) && validate_small(@smship)
      puts "Invalid choice, please try again: "
      @smship = gets.chomp.upcase.split(' ')
    end
    @smship[0] = @layout.find { |spot| spot[1] == @smship[0]}
    @smship[1] = @layout.find { |spot| spot[1] == @smship[1]}
    @smship[0][2] = 'S '
    @smship[1][2] = 'S '
  end

  def big_ship
    until (@smship + @bgship).uniq.length == 5
      @bgship = gets.chomp.upcase.split(' ')
      loop do
        if validate_spots(@bgship) && validate_big_spots(@bgship)
          @bgship << get_second(@bgship)
          break
        else
          puts "Invalid choice, please try again: "
          @bgship = gets.chomp.upcase.split(' ')
        end
      end
      @bgship[0] = layout.find { |spot| spot[1] == @bgship[0]}
      @bgship[1] = layout.find { |spot| spot[1] == @bgship[1]}
    end
    @bgship[0][2] = 'S '
    @bgship[1][2] = 'S '
    @bgship[2][2] = 'S '
  end

  def message1
    "\n\nI have laid out my ships on the grid.\nYou now need to layout your two ships.\nThe first is two units long and the second is three units long.\nThe grid has A1 at the top left and D4 at the bottom right.\n\nEnter the two squares for the two-unit ship, for example 'A1 A2': "
  end

  def message2
    "Please enter the first and last squares for the three-unit ship, for example, 'A1 A3': "
  end

end
