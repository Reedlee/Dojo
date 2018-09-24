require 'rspec'

describe 'nums examples' do
  context 'Chocolate Feast' do
    def chocolateFeast(n, c, m)
      init_chocolates = n / c
      chocolates = init_chocolates.clone
      total_chocolates = init_chocolates
      wrappers = 0

      while chocolates + wrappers >= m
        wrappers += chocolates
        chocolates = wrappers / m
        wrappers = wrappers - chocolates*m
        total_chocolates += chocolates
      end

      total_chocolates
    end

    it '6bars' do
      expect(chocolateFeast(10, 2, 5)).to eql(6)
    end

    it '9bars' do
      expect(chocolateFeast(15, 3, 2)).to eql(9)
    end
  end
end
