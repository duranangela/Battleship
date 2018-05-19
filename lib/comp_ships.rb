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
    when 0
      second = [1, 4].sample
    when 1
      second = [2, 5].sample
    when 2
      second = [3, 6].sample
    when 3
      second = 7
    when 4
      second = [5, 8].sample
    when 5
      second = [6, 9].sample
    when 6
      second = [7, 10].sample
    when 7
      second = 11
    when 8
      second = [9, 12].sample
    when 9
      second = [10, 13].sample
    when 10
      second = [11, 14].sample
    when 11
      second = 15
    when 12
      second = 13
    when 13
      second = 14
    when 14
      second = 15
    end
    @smship << @layout.keys[first]
    @smship << @layout.keys[second]
    @smship
  end

  def big_ship
    array = []
    ship = []
    until array.length == 3 && (array.none? {|x| @smship.include?(x)})
      array = []
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
      array << @layout[@layout.keys[index1]]
      array << @layout[@layout.keys[index2]]
      array << @layout[@layout.keys[index3]]
    end
    @bgship << @layout.keys[index1]
    @bgship << @layout.keys[index2]
    @bgship << @layout.keys[index3]
    @bgship
  end

end
