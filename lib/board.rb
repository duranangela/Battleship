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
    "==========\n. 1 2 3 4 \nA #{line1.join}\nB #{line2.join}\nC #{line3.join}\nD #{line4.join}\n=========="
  end

end
