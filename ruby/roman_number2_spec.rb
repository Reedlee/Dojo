class RomanNumber

  def to_normal roman_number
    return 1 if roman_number == 'I'
    return 2 if roman_number == 'II'
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
  }.each do |roman, normal|
    it "should #{roman} should be equal #{normal}" do
      expect(@converter.to_normal roman).to eql normal
    end
  end

end
