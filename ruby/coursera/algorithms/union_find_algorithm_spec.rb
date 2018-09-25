require 'rspec'

describe 'UnionFindAlgorithm' do
  context 'Quick Find' do
    class QuickFind
      attr_reader :network

      def initialize(size)
        @network = []
        (0..size).each { |i| @network[i] = i }
      end

      def connected(query)
        first = @network[query[0]]
        second = @network[query[1]]
        first == second
      end

      def union(query)
        first = @network[query[0]]
        second = @network[query[1]]

        @network.each_with_index do |elem, idx|
          if elem == first
            @network[idx] = second
          end
        end
        @network
      end
    end

    def find_max(n, queries)
      network = []

      (0..n).each { |i| network[i] = i }

      queries.each do |query|
        first = network[query[0]]
        second = network[query[1]]

        network.each_with_index do |elem, idx|
          if elem == first
            network[idx] = second
          end
        end
      end
      counter = {}
      network.each do |elem|
        if counter[elem].nil?
          counter[elem] = 1
        else
          counter[elem] += 1
        end
      end

      counter.values.max
    end

    it '1' do
      n = 5
      arr = [[1, 2], [1, 3]]
      expect(find_max(n, arr)).to eql(3)
    end

    it '2' do
      quick = QuickFind.new(5)
      arr = [[1, 2], [1, 3]]
      arr.each do |query|
        unless quick.connected(query)
          quick.union(query)
        end
      end

      expect(quick.network).to eql([0, 3, 3, 3, 4, 5])
    end
  end

  context 'QuickUnion' do
    class QuickUnion
      attr_reader :network

      def initialize(size)
        @network = []
        (0..size).each { |i| @network[i] = i }
      end

      def root(elem)

        loop do
          if @network[elem] == elem
            break
          else
            elem = @network[elem]
          end
        end

        elem
      end

      def connected(query)
        first = @network[query[0]]
        second = @network[query[1]]
        root(first) == root(second)
      end

      def union(query)
        first = @network[query[0]]
        second = @network[query[1]]

        @network[root(first)] = root(second)
        @network
      end
    end

    it '2' do
      quick = QuickUnion.new(5)
      arr = [[1, 2], [1, 3], [4, 5], [5, 1]]
      arr.each do |query|
        unless quick.connected(query)
          quick.union(query)
        end
      end

      expect(quick.network).to eql([0, 2, 3, 3, 5, 3])
    end
  end

  context 'QuickUnionImproved' do
    class QuickUnionImproved
      attr_reader :network

      def initialize(size)
        @network = []
        @size = []
        (0..size).each do |i|
          @network[i] = i
          @size[i] = 1
        end
      end

      def root(elem)

        loop do
          if @network[elem] == elem
            break
          else
            elem = @network[elem]
          end
        end

        elem
      end

      def connected(query)
        first = @network[query[0]]
        second = @network[query[1]]
        root(first) == root(second)
      end

      def union(query)
        first = @network[query[0]]
        second = @network[query[1]]
        first_root = root(first)
        second_root = root(second)
        if @size[first_root] > @size[second_root]
          @network[second_root] = first_root
          @size[first_root] += @size[second_root]
        else
          @network[first_root] = second_root
          @size[second_root] += @size[first_root]
        end

        @network
      end
    end

    it '2' do
      quick = QuickUnionImproved.new(5)
      arr = [[1, 2], [1, 3], [4, 5], [1, 5]]
      arr.each do |query|
        unless quick.connected(query)
          quick.union(query)
        end
      end

      expect(quick.network).to eql([0, 2, 2, 2, 5, 2])
    end
  end
end
