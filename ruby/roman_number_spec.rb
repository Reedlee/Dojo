require 'rspec'

class RomanNumber
  def to_roman(number)
    return 'I' if number == 1
    return 'II' if number == 2
    return 'III' if number == 3
    return 'V' if number == 5
    return 'X' if number == 10
    return 'I' + to_roman(number + 1) if number  == 5 - 1
    return 'I' + to_roman(number + 1) if number  == 10 - 1
    return 'V' + to_roman(number - 5) if number > 5 && number < 9
    return 'X' + to_roman(number - 10) if number > 10 && number < 20
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
      13 => 'XIIIfail',
      14 => 'XIVfail',
      15 => 'XVfail',
      19 => 'XIXfail',
  }.each do |normal_number, roman_number|
    it "#{normal_number} should be equal #{roman_number}" do
      expect(@r.to_roman normal_number).to eql roman_number
    end
  end
end
