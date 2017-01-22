require 'rspec'

class FizzBuzz
  def say number
    return 'Fizz' if number == 3
    number
  end
end

describe FizzBuzz do
  before do
    @f = FizzBuzz.new
  end

  [1, 2, 4].each do |number|
    it 'should return 1' do
      expect(@f.say number).to eql number
    end
  end

  it 'should return Fizz' do
    expect(@f.say 3).to eql 'Fizz'
  end

end
