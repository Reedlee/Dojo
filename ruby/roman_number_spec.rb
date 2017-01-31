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
        100 => 'C',
        500 => 'D',
    }.each do |normal_number, roman_number|
      return roman_number if number == normal_number
    end
    return 'I' + to_roman(number + 1) if number  == 5 - 1
    return 'I' + to_roman(number + 1) if number  == 10 - 1
    return 'X' + to_roman(number + 10) if (number >= 50 - 10) && number < 50
    return 'X' + to_roman(number + 10) if (number >= 100 - 10) && number < 100
    return 'C' + to_roman(number + 100) if (number >= 500 - 100) && number < 500

    return 'V' + to_roman(number - 5) if number > 5 && number < 9
    return 'X' + to_roman(number - 10) if number > 10 && number < 40
    return 'L' + to_roman(number - 50) if number > 50 && number < 90
    return 'C' + to_roman(number - 100) if number > 100 && number < 500
    return 'D' + to_roman(number - 500) if number > 500 && number < 1000
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
      100 => 'C',
      101 => 'CI',
      90 => 'XC',
      500 => 'D',
      501 => 'DI',
      894 => 'DCCCXCIV',
      394 => 'CCCXCIV',
      494 => 'CDXCIV',
  }.each do |normal_number, roman_number|
    it "#{normal_number} should be equal #{roman_number}" do
      expect(@r.to_roman normal_number).to eql roman_number
    end
  end
end
