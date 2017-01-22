require 'rspec'

class FizzBuzz
  def say number
    number
  end
end

describe FizzBuzz do

  it 'should return 1' do
    f = FizzBuzz.new
    expect(f.say 1).to eql 1
  end

  it 'should return 2' do
    f = FizzBuzz.new
    expect(f.say 2).to eql 2
  end

end
