
module ValidateShips

  def validate_small(smship)
    if smship[0] == 'A1'
      ['A2', 'B1'].include? smship[1]
    elsif smship[0] == 'A2'
      ['A1', 'B2', 'A2'].include? smship[1]
    elsif smship[0] == 'A3'
      ['A2', 'B3', 'A4'].include? smship[1]
    elsif smship[0] == 'A4'
      ['A3', 'B4'].include? smship[1]
    elsif smship[0] == 'B1'
      ['A1', 'B2', 'C1'].include? smship[1]
    elsif smship[0] == 'B2'
      ['A2', 'B1', 'C2', 'B3'].include? smship[1]
    elsif smship[0] == 'B3'
      ['A3', 'B2', 'C3', 'B4'].include? smship[1]
    elsif smship[0] == 'B4'
      ['A4', 'B3', 'C4'].include? smship[1]
    elsif smship[0] == 'C1'
      ['B1', 'C2', 'D1'].include? smship[1]
    elsif smship[0] == 'C2'
      ['B2', 'C1', 'D2', 'C3'].include? smship[1]
    elsif smship[0] == 'C3'
      ['B3', 'C2', 'D3', 'C4'].include? smship[1]
    elsif smship[0] == 'C4'
      ['B4', 'C3', 'D4'].include? smship[1]
    elsif smship[0] == 'D1'
      ['C1', 'D2'].include? smship[1]
    elsif smship[0] == 'D2'
      ['C2', 'D1', 'D3'].include? smship[1]
    elsif smship[0] == 'D3'
      ['C3', 'D2', 'D4'].include? smship[1]
    elsif smship[0] == 'D4'
      ['C4', 'D3'].include? smship[1]
    else
      false
    end
  end


  def validate_exists(spot)
    until @layout.include?(spot)
      puts "Invalid choice, try again"
      spot = gets.chomp.chars
    end
  end

  def validate_place(spot1, spot2)
    until spot1 != spot2
      puts "You have to pick a different square!! Try again:"
      spot2 = gets.chomp.chars
    end
    # if spot2[0] == spot1[0]
    #   if spot2[1] == (spot[1+1] || spot[1+2]
    # binding.pry
  end

end
