require 'rspec'

describe 'birthday cake examples' do

  def getBirthdayCandels(ar)
    sort = ar.sort
    last = sort.pop
    counter = 1
    loop do
      candidate = sort.pop
      case
        when candidate.nil?
          break
        when candidate == last
          counter += 1
        when candidate < last
          break
      end
    end
    counter
  end


  it '' do
    candels = [9999999, 9999999, 9999999, 9999999, 9999999, 9999999, 9999999, 9999999, 9999999, 9999999, 9999999, 9999999, 9999999, 9999999, 9999999, 9999999]

    expect(getBirthdayCandels(candels)).to eql(16)
  end

  def hourglassSum(arr)
    lines = arr.size
    columns = arr[0].size
    first = []
    second = []
    third = []
    (0..lines-3).each do |index|
      arr[index].each_cons(3) do |columns|
        first.push(columns.inject(:+))
      end

      arr[index+1].each_cons(3) do |columns|
        second.push(columns[1])
      end

      arr[index+2].each_cons(3) do |columns|
        third.push(columns.inject(:+))
      end
    end
    max = -9*3
    first.each_with_index do |sum, index|
      max = [max, sum + second[index] + third[index]].max
    end
    max
  end


  it 'hour glass' do
    arr = [[1, 1, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 0, 2, 4, 4, 0], [0, 0, 0, 2, 0, 0], [0, 0, 1, 2, 4, 0]]
    expect(hourglassSum(arr)).to eql(19)
  end
end
