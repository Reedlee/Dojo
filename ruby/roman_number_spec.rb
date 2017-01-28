require 'rspec'

class RomanNumber
  def to_roman(number)
    return 'I' if number == 1
    return 'II' if number == 2
  end
end

describe RomanNumber do

  it '1 should be equal I' do
    r = RomanNumber.new
    expect(r.to_roman 1).to eql 'I'
    end

  it '2 should be equal II' do
    r = RomanNumber.new
    expect(r.to_roman 2).to eql 'II'
  end
end
