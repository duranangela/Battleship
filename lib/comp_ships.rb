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
    label_spots
  end

  def label_spots
    @smship = @smship.map {|spot| spot[2] = 'S '}
    @bgship = @bgship.map {|spot| spot[2] = 'S '}
  end

  def small_ship
    first = find_first
    second = find_second(first)
    @smship << first
    @smship << second
  end

  def big_ship
    until @bgship.length == 3 && (@bgship.none? {|x| @smship.include?(x)})
      @bgship = []
      first = find_first
      second_and_third = find_second_and_third(first)
      @bgship << first
      @bgship << second_and_third[0]
      @bgship << second_and_third[1]
    end
  end

  def find_first
    index = rand(0..15)
    first = layout[index]
    first
  end

  def find_second(first)
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
    second
  end

  def find_second_and_third(first)
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
    [second, third]
  end

end
