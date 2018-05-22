class Board
  attr_accessor :layout

  def initialize(x = 4)
    coordinates = ((1..x).to_a).product((1..x).to_a)
    spots = (('A'..(x+64).chr).to_a).product(('1'..(x.to_s)).to_a)
    spots = spots.join.scan(/../)
    zipped = coordinates.zip(spots)
    @layout = zipped.map do |array|
      array[2] = '  '
      [array[0], array[1], array[2]]
    end
  end

  def board
    line1 = layout[0][2]+layout[1][2]+layout[2][2]+layout[3][2]
    line2 = layout[4][2]+layout[5][2]+layout[6][2]+layout[7][2]
    line3 = layout[8][2]+layout[9][2]+layout[10][2]+layout[11][2]
    line4 = layout[12][2]+layout[13][2]+layout[14][2]+layout[15][2]
    "\n==========\n. 1 2 3 4 \nA #{line1}\nB #{line2}\nC #{line3}\nD #{line4}\n==========\n"
  end

end
