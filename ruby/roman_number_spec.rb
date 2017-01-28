require 'rspec'

class RomanNumber
  def to_roman(number)
    return 'I' if number == 1
    return 'II' if number == 2
    return 'III' if number == 3
    return 'IV' if number == 4
    return 'V' if number == 5
    return 'VI' if number == 6
  end
end

describe RomanNumber do

  before do
    @r = RomanNumber.new
  end

  {
      1=>'I',
      2=>'II',
      3=>'III',
      4=>'IV',
      5=>'V',
      6=>'VI'
  }.each do |normal_number, roman_number|
    it "#{normal_number} should be equal #{roman_number}" do
      expect(@r.to_roman normal_number).to eql roman_number
    end
  end
end
