require 'pry'

module ValidateShips

  def validate_spots(smship)
    first = layout.find { |spot| spot[1] == smship[0]}
    second = layout.find { |spot| spot[1] == smship[1]}
    !first.nil? && !second.nil?
  end

  def validate_small(smship)
    first = layout.find { |spot| spot[1] == smship[0]}
    second = layout.find { |spot| spot[1] == smship[1]}
    coor1 = first[0][0]
    coor2 = first[0][1]
    poss1 = layout.find {|spot| spot[0] == [coor1, coor2 + 1]}
    poss2 = layout.find {|spot| spot[0] == [coor1, coor2 - 1]}
    poss3 = layout.find {|spot| spot[0] == [coor1 + 1, coor2]}
    poss4 = layout.find {|spot| spot[0] == [coor1 - 1, coor2]}
    group = [poss1, poss2, poss3, poss4]
    if first.nil? || second.nil?
      false
    elsif !group.include?(second)
      false
    else
      true
    end
  end

  def validate_big_spots(bgship)
    first = layout.find { |spot| spot[1] == bgship[0]}
    third = layout.find { |spot| spot[1] == bgship[1]}
    coor1 = first[0][0]
    coor2 = first[0][1]
    poss1 = layout.find {|spot| spot[0] == [coor1, coor2 + 2]}
    poss2 = layout.find {|spot| spot[0] == [coor1, coor2 - 2]}
    poss3 = layout.find {|spot| spot[0] == [coor1 + 2, coor2]}
    poss4 = layout.find {|spot| spot[0] == [coor1 - 2, coor2]}
    group = [poss1, poss2, poss3, poss4]
    if first.nil? || third.nil?
      false
    elsif !group.include?(third)
      false
    else
      true
    end
  end

  def get_second(bgship)
    first = layout.find { |spot| spot[1] == bgship[0]}
    third = layout.find { |spot| spot[1] == bgship[1]}
    coor1 = first[0][0]
    coor2 = first[0][1]
    poss1 = layout.find {|spot| spot[0] == [coor1, coor2 + 2]}
    poss2 = layout.find {|spot| spot[0] == [coor1, coor2 - 2]}
    poss3 = layout.find {|spot| spot[0] == [coor1 + 2, coor2]}
    poss4 = layout.find {|spot| spot[0] == [coor1 - 2, coor2]}
    return layout.find {|spot| spot[0] == [coor1, coor2 + 1]} if third == poss1
    return layout.find {|spot| spot[0] == [coor1, coor2 - 1]} if third == poss2
    return layout.find {|spot| spot[0] == [coor1 + 1, coor2]} if third == poss3
    return layout.find {|spot| spot[0] == [coor1 - 1, coor2]} if third == poss4
  end

end
