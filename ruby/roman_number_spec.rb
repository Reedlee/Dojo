require 'rspec'

class RomanNumber
  def to_roman(number)
    'I'
  end
end

describe RomanNumber do

  it '1 should be equal I' do
    r = RomanNumber.new
    expect(r.to_roman 1).to eql 'I'
  end
end
