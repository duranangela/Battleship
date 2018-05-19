class Board
  attr_reader :spots, :layout

  def initialize(x = 'D', y = '4')
    @spots = (('A'..x).to_a).product(('1'..y).to_a)
    @layout = Hash[(@spots).map {|x| [x, '  ']}]
  end

  def board(h = [], m = [])
    line1 = @layout.values[0..3]
    line2 = @layout.values[4..7]
    line3 = @layout.values[8..11]
    line4 = @layout.values[12..15]
    puts '=========='
    puts '. 1 2 3 4 '
    puts "A " + line1.join
    puts "B " + line2.join
    puts "C " + line3.join
    puts "D " + line4.join
    puts '=========='
  end

end
