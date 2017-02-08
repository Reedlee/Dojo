class RomanNumber

  def to_normal current_number
    {
        'I'=> 1,
        'II'=> 2,
        'III'=> 3,
        'V'=> 5,
        'X'=> 10,
    }.each do |roman_number, normal_number|
      return normal_number if current_number == roman_number
    end
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
  }.each do |roman, normal|
    it "should #{roman} should be equal #{normal}" do
      expect(@converter.to_normal roman).to eql normal
    end
  end

end
