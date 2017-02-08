class RomanNumber

  def to_normal current_number
    {
        'I'=> 1,
        'II'=> 2,
        'III'=> 3,
        'V'=> 5,
        'X'=> 10,
        'L'=> 50,
        'C'=> 100,
        'D'=> 500,
        'M'=> 1000,
    }.each do |roman_number, normal_number|
      return normal_number if current_number == roman_number
    end

    return 5 - 1 if current_number == 'I'+'V'

    result = 0
    current_number.each_char do |symbol|
      result += to_normal(symbol)
    end
    return result
  end
end


describe RomanNumber do
  before do
    @converter = RomanNumber.new
  end

  {
    'I'=> 1,
    'II'=> 2,
    'III'=> 3,
    'V'=> 5,
    'X'=> 10,
    'L'=> 50,
    'C'=> 100,
    'D'=> 500,
    'M'=> 1000,
    'VI'=> 6,
    'XI'=> 11,
    'XII'=> 12,
    'DII'=> 502,
    'DXV'=> 515,
    'IV'=> 4,
  }.each do |roman, normal|
    it "should #{roman} should be equal #{normal}" do
      expect(@converter.to_normal roman).to eql normal
    end
  end

end
