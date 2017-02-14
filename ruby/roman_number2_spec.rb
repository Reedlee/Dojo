class RomanNumber

  def search_rule current_number
    [
        {roman_number: 'I', normal_number: 1, prev: 0},
        {roman_number: 'V', normal_number: 5, prev: 1},
        {roman_number: 'X', normal_number: 10, prev: 1},
        {roman_number: 'L', normal_number: 50, prev: 10},
        {roman_number: 'C', normal_number: 100, prev: 10},
        {roman_number: 'D', normal_number: 500, prev: 100},
        {roman_number: 'M', normal_number: 1000, prev: 100},
    ].each do |rule|
      return rule if current_number == rule[:roman_number]
    end
  end

  def to_normal current_number
    result = []
    current_number.each_char do |symbol|
      rule = search_rule symbol
      if result.last() == rule[:prev]
        result[result.length-1] = -1 * rule[:prev]
      end
      result.push rule[:normal_number]
    end
    sum = result.inject {|sum, element| sum + element}

    return sum
  end
end


describe RomanNumber do
  before do
    @converter = RomanNumber.new
  end

  {
    'I' => 1,
    'II' => 2,
    'III' => 3,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000,
    'VI' => 6,
    'XI' => 11,
    'XII' => 12,
    'DII' => 502,
    'DXV' => 515,
    'IV' => 4,
    'IX' => 9,
    'XIV' => 14,
    'XL' => 40,
  }.each do |roman, normal|
    it "should #{roman} should be equal #{normal}" do
      expect(@converter.to_normal roman).to eql normal
    end
  end

end
