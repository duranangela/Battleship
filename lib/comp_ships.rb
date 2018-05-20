require './lib/board'

class CompShips < Board
attr_reader :smship, :bgship

  def initialize
    super
    @smship = []
    @bgship = []
  end

  def small_ship
    first = (0..14).to_a.sample
    case first
    when 0 then second = [1, 4].sample
    when 1 then second = [2, 5].sample
    when 2 then second = [3, 6].sample
    when 3 then second = 7
    when 4 then second = [5, 8].sample
    when 5 then second = [6, 9].sample
    when 6 then second = [7, 10].sample
    when 7 then second = 11
    when 8 then second = [9, 12].sample
    when 9 then second = [10, 13].sample
    when 10 then second = [11, 14].sample
    when 11 then second = 15
    when 12 then second = 13
    when 13 then second = 14
    when 14 then second = 15
    end
    @smship << @layout.keys[first]
    @smship << @layout.keys[second]
    @smship
  end

  def big_ship
    until @bgship.length == 3 && (@bgship.none? {|x| @smship.include?(x)})
      @bgship = []
      index1 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13].sample
      case index1
      when 0
        index2 = [1, 4].sample
        index3 = 2 if index2 == 1
        index3 = 8 if index2 == 4
      when 1
        index2 = [2, 5].sample
        index3 = 3 if index2 == 2
        index3 = 9 if index2 == 5
      when 2
        index2 = 6
        index3 = 10
      when 3
        index2 = 7
        index3 = 11
      when 4
        index2 = [5, 8].sample
        index3 = 6 if index2 == 5
        index3 = 12 if index2 == 8
      when 5
        index2 = [6, 9].sample
        index3 = 7 if index2 == 6
        index3 = 13 if index2 == 9
      when 6
        index2 = 10
        index3 = 14
      when 7
        index2 = 11
        index3 = 15
      when 8
        index2 = 9
        index3 = 10
      when 9
        index2 = 10
        index3 = 11
      when 12
        index2 = 13
        index3 = 14
      when 13
        index2 = 14
        index3 = 15
      end
      @bgship << @layout.keys[index1]
      @bgship << @layout.keys[index2]
      @bgship << @layout.keys[index3]
    end
    @bgship
  end

end
