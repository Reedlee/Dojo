require 'rspec'
require_relative 'fizz_buzz'

describe FizzBuzz do
  before do
    @f = FizzBuzz.new
  end

  [1, 2, 4].each do |number|
    it 'should return 1' do
      expect(@f.say number).to eql number
    end
  end

  [
    {inputs: [3, 6], expected_result: 'Fizz', multiple: 3},
    {inputs: [5, 10], expected_result: 'Buzz', multiple: 5},
    {inputs: [15, 30], expected_result: 'FizzBuzz', multiple: 15}
  ].each do |dataset|
    dataset[:inputs].each do |number|
      it "if number multiple #{dataset[:multiple]} it should return #{dataset[:expected_result]}" do
        expect(@f.say number).to eql dataset[:expected_result]
      end
    end
  end
end
