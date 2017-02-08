class RomanNumber

  def to_normal roman_number
    1 if roman_number == 'I'
  end
end


describe RomanNumber do

  it 'should I should be equal 1' do
    r = RomanNumber.new
    expect(r.to_normal 'I').to eql 1
  end
end
