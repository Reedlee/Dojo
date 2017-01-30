require 'rspec'

class RomanNumber
  def to_roman(number)
    {
        1 => 'I',
        2 => 'II',
        3 => 'III',
        5 => 'V',
        10 => 'X',
        50 => 'L',
    }.each do |normal_number, roman_number|
      return roman_number if number == normal_number
    end
    return 'I' + to_roman(number + 1) if number  == 5 - 1
    return 'I' + to_roman(number + 1) if number  == 10 - 1
    return 'X' + to_roman(number + 10) if number == 50 - 10
    return 'V' + to_roman(number - 5) if number > 5 && number < 9
    return 'X' + to_roman(number - 10) if number > 10 && number < 40
    return 'L' + to_roman(number - 50) if number > 50 && number < 100
  end
end

describe RomanNumber do

  before do
    @r = RomanNumber.new
  end

  {
      1 => 'I',
      2 => 'II',
      3 => 'III',
      4 => 'IV',
      5 => 'V',
      6 => 'VI',
      7 => 'VII',
      8 => 'VIII',
      9 => 'IX',
      10 => 'X',
      11 => 'XI',
      13 => 'XIII',
      14 => 'XIV',
      15 => 'XV',
      19 => 'XIX',
      20 => 'XX',
      40 => 'XL',
      50 => 'L',
      52 => 'LII',
      44 => 'XLIV',
  }.each do |normal_number, roman_number|
    it "#{normal_number} should be equal #{roman_number}" do
      expect(@r.to_roman normal_number).to eql roman_number
    end
  end
end
