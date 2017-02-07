require 'rspec'

class RomanNumber
  def to_roman(number)
    [
      {roman: 'I', shift: 1, number: 5},
      {roman: 'I', shift: 1, number: 10},
      {roman: 'X', shift: 10, number: 50},
      {roman: 'X', shift: 10, number: 100},
      {roman: 'C', shift: 100, number: 500},
      {roman: 'C', shift: 100, number: 1000},
    ].each do |params|
      return params[:roman] + to_roman(number + params[:shift]) if (number  >= params[:number] - params[:shift]) && number < params[:number]
    end

    {
        1000 => 'M',
        500 => 'D',
        100 => 'C',
        50 => 'L',
        10 => 'X',
        5 => 'V',
        3 => 'III',
        2 => 'II',
        1 => 'I',
    }.each do |normal_number, roman_number|
      return roman_number if number == normal_number
      return roman_number + to_roman(number - normal_number) if number > normal_number
    end
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
      1000 => 'M',
      1649 => 'MDCXLIX',
      999 => 'CMXCIX',
      2999 => 'MMCMXCIX',
  }.each do |normal_number, roman_number|
    it "#{normal_number} should be equal #{roman_number}" do
      expect(@r.to_roman normal_number).to eql roman_number
    end
  end
end
