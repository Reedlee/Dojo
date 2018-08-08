require 'rspec'

describe 'How enum work' do
  context '.reduce' do
    it '1 example' do
      (5..10).inject(1) do |product, n|
        p "product: #{product}"
        p "n: #{n}"
        product * n
      end
    end

    it 'sequence tn = n^2+1' do
      n = 2
      seq = (0..n).inject() do |result, n|
        p "result: #{result}"
        p "n: #{n}"
        result = result + n * n + 1
        p "result: #{result}"
        result
      end

      expect(seq).to eql(7)
    end
  end

  context '.map' do
    it 'simple example' do
      array = [0, 1, 2, 3, 4, 5]
      ra = array.map() do |result|
        p "result: #{result}"
        result + 1
      end

      expect(array).to eql([0, 1, 2, 3, 4, 5])
      expect(ra).to eql([1, 2, 3, 4, 5, 6])
    end

    it 'Palindromic Prime Calculation' do
      def is_prime?(number, prime_numbers)
        prime_numbers.each do |prime_number|
          return false if number % prime_number == 0 && prime_numbers.last != 2
        end

        prime_numbers.last.upto(number - 1).each do |x|
          return false if number % x == 0
        end
        prime_numbers.push(number)
      end

      def is_polindromic?(number)
        number.to_s == number.to_s.reverse
      end

      def get_polindromic_primes(array_size, prime_numbers)
        2.upto(200).lazy.map { |number| is_prime?(number, prime_numbers) && is_polindromic?(number) ? number : next }.select { |element| element.is_a?(Integer) }.first(array_size)
      end

      prime_numbers = [2]
      expect(get_polindromic_primes(6, prime_numbers)).to eql([2, 3, 5, 7, 11, 101])
    end

    it 'Palindromic Prime Calculation optimized' do
      require 'prime'

      def get_polindromic_primes_optim(n)
        result = Prime.each.lazy.select { |number| number.to_s == number.to_s.reverse }.first(n)
        p result
        result
      end

      expect(get_polindromic_primes_optim(6)).to eql([2, 3, 5, 7, 11, 101])
    end

    it 'Partial Applications' do
      def fact(n)
        (1..n).inject(:*) || 1
      end


      def partial(n, r)
        combination = -> (n) do
          -> (r) do
            p "n #{n}"
            p "n #{r}"
            brat = fact(n) / (fact(r) * fact(n - r))
            ->(s) do
              p "s #{s}"
              brat
            end
          end
        end

        nCr = combination.(n)

        k = nCr.(r)
        k.(6)
      end

      expect(partial(4, 2)).to eql(6)
    end
  end

  context '.group_by' do

    def group_by_marks(marks, pass_marks)
      # your code here
      result = marks.group_by { |name, mark| mark > pass_marks ? 'Failed' : 'Passed' }
    end

    it '' do
      marks = {"Ramesh": 23, "Vivek": 40, "Harsh": 88, "Mohammad": 60}
      expect(group_by_marks(marks, 30)).to eql({"Failed" => [["Ramesh", 23]], "Passed" => [["Vivek", 40], ["Harsh", 88], ["Mohammad", 60]]})
    end
  end
end
