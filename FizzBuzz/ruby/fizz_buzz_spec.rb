require 'rspec'

class FizzBuzz
  def say number
    return 'FizzBuzz' if number % 15 == 0
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

  {
      'Fizz'=> [3, 6],
      'Buzz'=> [5, 10],
      'FizzBuzz'=> [15, 30]
  }.each do |expected_result, params|
    params.each do |number|
      it "should return #{expected_result}" do
        expect(@f.say number).to eql expected_result
      end
    end
  end
end
