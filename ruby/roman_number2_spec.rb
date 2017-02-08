class RomanNumber

end


describe RomanNumber do

  it 'should I should be equal 1' do
    r = RomanNumber.new
    expect(r.to_normal 'I').to eql 1
  end
end
