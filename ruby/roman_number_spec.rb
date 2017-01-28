require 'rspec'

class RomanNumber

end

describe RomanNumber do

  it '1 should be equal I' do
    r = RomanNumber.new
    expect(r.to_roman 1).to eql 'I'
  end
end
