require 'rspec'

describe FizzBuzz do

  it 'should return 1' do
    f = FizzBuzz.new
    expect(f.say 1).to eql 1
  end
end
