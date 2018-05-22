require './lib/board'

class CompShips < Board
  attr_reader :smship, :bgship

  def initialize
    super
    @smship = []
    @bgship = []
  end

  def get_ships
    small_ship
    big_ship
  end


  def small_ship
    index = rand(0..15)
    first = layout[index]
    coor1 = first[0][0]
    coor2 = first[0][1]
    poss1 = layout.find {|spot| spot[0] == [coor1, coor2 + 1]}
    poss2 = layout.find {|spot| spot[0] == [coor1, coor2 - 1]}
    poss3 = layout.find {|spot| spot[0] == [coor1 + 1, coor2]}
    poss4 = layout.find {|spot| spot[0] == [coor1 - 1, coor2]}
    second = nil
    until second != nil
      second = [poss1, poss2, poss3, poss4].sample
    end
    first[2] = 'S '
    second[2] = 'S '
    @smship << first
    @smship << second
  end

  def big_ship
    until @bgship.length == 3 && (@bgship[1].none? {|x| @smship[1].include?(x)})
      @bgship = []
      index = rand(0..15)
      first = layout[index]
      coor1 = first[0][0]
      coor2 = first[0][1]
      poss1 = layout.find {|spot| spot[0] == [coor1, coor2 + 1]}
      poss2 = layout.find {|spot| spot[0] == [coor1, coor2 - 1]}
      poss3 = layout.find {|spot| spot[0] == [coor1 + 1, coor2]}
      poss4 = layout.find {|spot| spot[0] == [coor1 - 1, coor2]}
      second, third = nil
      until second != nil && third != nil
        second = [poss1, poss2, poss3, poss4].sample
        third = layout.find {|spot| spot[0] == [coor1, coor2 + 2]} if second == poss1
        third = layout.find {|spot| spot[0] == [coor1, coor2 - 2]} if second == poss2
        third = layout.find {|spot| spot[0] == [coor1 + 2, coor2]} if second == poss3
        third = layout.find {|spot| spot[0] == [coor1 - 2, coor2]} if second == poss4
      end
      @bgship << first
      @bgship << second
      @bgship << third
      @bgship[0][2] = 'S '
      @bgship[1][2] = 'S '
      @bgship[2][2] = 'S '
    end

  end

end
