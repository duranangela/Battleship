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

  def validate_big(bgship)
    if bgship[0] == 'A1'
      ['A3', 'C1'].include? bgship[1]
    elsif bgship[0] == 'A2'
      ['A4', 'C2'].include? bgship[1]
    elsif bgship[0] == 'A3'
      bgship[1] == 'C3'
    elsif bgship[0] == 'A4'
      bgship[1] == 'C4'
    elsif bgship[0] == 'B1'
      ['B3', 'D1'].include? bgship[1]
    elsif bgship[0] == 'B2'
      ['B4', 'D2'].include? bgship[1]
    elsif bgship[0] == 'B3'
      bgship[1] == 'D3'
    elsif bgship[0] == 'B4'
      bgship[1] == 'D4'
    elsif bgship[0] == 'C1'
      bgship[1] == 'C3'
    elsif bgship[0] == 'C2'
      bgship[1] == 'C4'
    elsif bgship[0] == 'D1'
      bgship[1] == 'D3'
    elsif bgship[0] == 'D2'
      bgship[1] == 'D4'
    else
      false
    end
  end

  def get_middle_spot(bgship)
    if bgship.sort == ['A1', 'A3'].sort
      'A2'
    elsif bgship.sort == ['A1', 'C1'].sort
      'B1'
    elsif bgship.sort == ['A2', 'A4'].sort
      'A3'
    elsif bgship.sort == ['A2', 'C2'].sort
      'B2'
    elsif bgship.sort == ['A3', 'C3'].sort
      'B3'
    elsif bgship.sort == ['A4', 'C4'].sort
      'B4'
    elsif bgship.sort == ['B1', 'B3'].sort
      'B2'
    elsif bgship.sort == ['B1', 'D1'].sort
      'C1'
    elsif bgship.sort == ['B2', 'B4'].sort
      'B3'
    elsif bgship.sort == ['B2', 'D2'].sort
      'C2'
    elsif bgship.sort == ['B3', 'D3'].sort
      'C3'
    elsif bgship.sort == ['B4', 'D4'].sort
      'C4'
    elsif bgship.sort == ['C1', 'C3'].sort
      'C2'
    elsif bgship.sort == ['C2', 'C4'].sort
      'C3'
    elsif bgship.sort == ['D1', 'D3'].sort
      'D2'
    elsif bgship.sort == ['D2', 'D4'].sort
      'D3'
    end
  end

end
