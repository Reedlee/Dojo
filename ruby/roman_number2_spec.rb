class RomanNumber

  def to_normal roman_number
    return 1 if roman_number == 'I'
    return 2 if roman_number == 'II'
  end
end


describe RomanNumber do

  it 'should I should be equal 1' do
    r = RomanNumber.new
    expect(r.to_normal 'I').to eql 1
  end

  it 'should II should be equal 2' do
    r = RomanNumber.new
    expect(r.to_normal 'II').to eql 2
  end

  it 'should III should be equal 3' do
    r = RomanNumber.new
    expect(r.to_normal 'III').to eql 3
  end
end
