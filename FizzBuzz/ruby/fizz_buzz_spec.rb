require 'rspec'

class FizzBuzz
  def say number
    number
  end
end

describe FizzBuzz do
  before do
    @f = FizzBuzz.new
  end

  [1,2].each do |number|
    it 'should return 1' do
      expect(@f.say number).to eql number
    end
  end

end
