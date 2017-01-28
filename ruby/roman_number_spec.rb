require 'rspec'

class RomanNumber
  def to_roman(number)
    return 'I' if number == 1
    return 'II' if number == 2
    return 'III' if number == 3
    return 'IV' if number == 4
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

  it '3 should be equal III' do
    r = RomanNumber.new
    expect(r.to_roman 3).to eql 'III'
  end

  it '4 should be equal IV' do
    r = RomanNumber.new
    expect(r.to_roman 4).to eql 'IV'
  end

  it '5 should be equal V' do
    r = RomanNumber.new
    expect(r.to_roman 5).to eql 'V'
  end
end
