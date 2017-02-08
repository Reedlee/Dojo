require 'rspec'

class RomanNumber
  def to_roman(current_number)
    [
       {normal_number: 1000, roman_number: 'M', shift: 100, roman_number_prev: 'C'},
       {normal_number: 500, roman_number: 'D', shift: 100, roman_number_prev: 'C'},
       {normal_number: 100, roman_number: 'C', shift: 10, roman_number_prev: 'X'},
       {normal_number: 50, roman_number: 'L', shift: 10, roman_number_prev: 'X'},
       {normal_number: 10, roman_number: 'X', shift: 1, roman_number_prev: 'I'},
       {normal_number: 5, roman_number: 'V', shift: 1, roman_number_prev: 'I'},
       {normal_number: 1, roman_number: 'I', shift: 0, roman_number_prev: 'I'},
    ].each do |params|
      return params[:roman_number] if current_number == params[:normal_number]
      return params[:roman_number] + to_roman(current_number - params[:normal_number]) if current_number > params[:normal_number]
      return params[:roman_number_prev] + to_roman(current_number + params[:shift]) if current_number.between?(params[:normal_number]-params[:shift],params[:normal_number]-1)
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
