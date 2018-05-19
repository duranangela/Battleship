
module ValidateShips

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
