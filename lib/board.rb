class Board
  attr_accessor :layout

  def initialize
    spots = (('A'..'D').to_a).product(('1'..'4').to_a)
    spots_array = spots.map do |spot|
      new_spot = spot[0] + spot[1]
      new_spot
    end
    @layout = Hash[spots_array.map {|x| [x, '  ']}]
  end

  def board
    line1 = @layout.values[0..3]
    line2 = @layout.values[4..7]
    line3 = @layout.values[8..11]
    line4 = @layout.values[12..15]
    "==========\n. 1 2 3 4 \nA #{line1.join}\nB #{line2.join}\nC #{line3.join}\nD #{line4.join}\n=========="
  end

end
