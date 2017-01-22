require 'rspec'

class FizzBuzz
  def say number
    return 'Fizz' if number % 3 == 0
    return 'Buzz' if number % 5 == 0
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

  [3, 6].each do |number|
    it 'should return Fizz' do
      expect(@f.say number).to eql 'Fizz'
    end
  end

  [5, 10].each do|number|
    it 'should return Buzz' do
      expect(@f.say number).to eql 'Buzz'
    end
  end

  [15, 30].each do |number|
    it 'should return FizzBuzz' do
      expect(@f.say number).to eql 'FizzBuzz'
    end
  end
end
