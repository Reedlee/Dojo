require 'rspec'

describe 'String' do
  context 'encode' do
    it 'Type of string encode' do
      # puts Encoding.list
      puts(82.chr("UTF-8"))
      puts('82'.force_encoding("UTF-8"))
      document = String.new
      document.force_encoding('CP855')
      puts("My String's encoding: ", document.encoding.name)
      document = <<-HERE
82 117 98 121 32 66 97 99 107 101 110 100
208 162 209 128 208 181 208 177 208 190 208 178 208 176 208 189 208 184 209 143 32 208 186 32 208 186 208 176 208 189 208 180 208 184 208 180 208 176 209 130 209 131


208 161 209 130 209 141 208 186 58 32 114 117 98 121 111 110 114 97 105 108 115 46

208 159 208 190 208 189 208 184 208 188 208 176 208 189 208 184 208 181 32 209 128 208 181 208 187 209 143 209 134 208 184 208 190 208 189 208 189 209 139 209 133 32 208 184 32 208 189 208 181 209 128 208 181 208 187 209 143 209 134 208 184 208 190 208 189 208 189 209 139 209 133 32 208 161 208 163 208 145 208 148 46

208 159 208 190 208 189 208 184 208 188 208 176 208 189 208 184 208 181 44 32 208 186 208 176 208 186 32 209 128 208 176 208 177 208 190 209 130 208 176 208 181 209 130 32 209 129 208 190 208 178 209 128 208 181 208 188 208 181 208 189 208 189 209 139 208 185 32 87 101 98 32 40 68 78 83 44 32 72 84 84 80 83 44 32 84 76 83 44 32 208 161 208 181 209 128 209 130 208 184 209 132 208 184 208 186 208 176 209 130 209 139 44 32 208 184 32 209 130 46 208 180 46 41 46

208 158 208 191 209 139 209 130 32 208 176 208 180 208 188 208 184 208 189 208 184 209 129 209 130 209 128 208 184 209 128 208 190 208 178 208 176 208 189 208 184 209 143 32 76 105 110 117 120 46

208 156 208 190 209 130 208 184 208 178 208 176 209 134 208 184 209 143 32 208 186 32 208 191 209 128 208 190 209 132 208 181 209 129 209 129 208 184 208 190 208 189 208 176 208 187 209 140 208 189 208 190 208 185 32 209 128 208 176 208 177 208 190 209 130 208 181 32 226 128 147 32 209 141 209 130 208 190 32 209 129 208 176 208 188 208 190 208 181 32 208 179 208 187 208 176 208 178 208 189 208 190 208 181 46

208 151 208 176 208 180 208 176 209 135 208 184

208 160 208 176 208 183 209 128 208 176 208 177 208 190 209 130 208 186 208 176 32 98 97 99 107 101 110 100 32 209 135 208 176 209 129 209 130 208 184 32 208 177 208 184 208 183 208 189 208 181 209 129 45 208 188 208 181 209 129 209 129 208 181 208 189 208 180 208 182 208 181 209 128 208 176 44 32 208 178 208 184 209 128 209 130 209 131 208 176 208 187 209 140 208 189 208 190 208 185 32 209 130 208 181 208 187 208 181 209 132 208 190 208 189 208 184 208 184 44 32 67 82 77 45 209 129 208 184 209 129 209 130 208 181 208 188 209 139 44 32 209 129 208 190 208 178 208 188 208 181 209 137 209 145 208 189 208 189 208 190 208 185 32 209 129 32 208 178 208 184 209 128 209 130 209 131 208 176 208 187 209 140 208 189 208 190 208 185 32 209 130 208 181 208 187 208 181 209 132 208 190 208 189 208 184 208 181 208 185

208 163 209 129 208 187 208 190 208 178 208 184 209 143

208 160 208 176 208 177 208 190 209 130 208 176 32 208 191 208 190 208 187 208 189 208 190 209 129 209 130 209 140 209 142 32 209 131 208 180 208 176 208 187 209 145 208 189 208 189 208 176 209 143

208 151 208 176 209 128 208 191 208 187 208 176 209 130 208 176 32 208 190 209 130 32 49 53 48 32 209 130 209 139 209 129 46 209 128 209 131 208 177 208 187 208 181 208 185

208 156 208 184 208 189 208 184 208 188 209 131 208 188 32 209 129 208 190 208 178 208 181 209 137 208 176 208 189 208 184 208 185 32 208 184 32 208 177 209 142 209 128 208 190 208 186 209 128 208 176 209 130 208 184 208 184

208 189 208 181 32 209 132 209 128 208 184 208 187 208 176 208 189 209 129 44 32 208 176 32 208 191 208 190 208 187 208 189 208 190 209 134 208 181 208 189 208 189 208 176 209 143 32 209 128 208 176 208 177 208 190 209 130 208 176 32 208 178 32 208 186 208 190 208 188 208 176 208 189 208 180 208 181

116 101 108 101 103 114 97 109 32 64 111 101 112 108 97 116 111 110 111 118 97 44 32 101 109 97 105 108 58 32 104 114 64 115 116 97 112 108 121 46 99 111 32 208 157 208 176 209 136 208 184 32 208 191 209 128 208 190 208 180 209 131 208 186 209 130 209 139 58 32 104 116 116 112 115 58 47 47 112 114 105 109 97 118 101 114 97 104 113 46 99 111 109 47
      HERE
      array = document.split("\n")
      new_ar = []
      array.each do |el|
        new_ar.push(el.split(' '))
      end
      p words = new_ar.map { |el1| el1.map { |el| el.to_i.chr("UTF-8") } }

      words.compact!
      p line = words.map { |word| word.join('') }
      words = line.join("/n")
      p words.force_encoding('WINDOWS-1252')

    end
  end

  context 'format' do
    def process_text(array)
      new_string = ''
      array.each do |string|
        new_string = new_string + ' ' + string.strip
      end
      new_string.strip!
      new_string
    end

    it '["Hi, \n", " Are you having fun?    "]' do
      expect(process_text(["Hi, \n", " Are you having fun?    "])).to eql("Hi, Are you having fun?")
    end

    def format_text(string)
      is_capitalize = true
      add_whitespace_after = false

      counter = 1
      sentence = ''
      string.each_char do |char|
        is_whitespace = char == ' '
        if is_whitespace
          add_whitespace_after = false
          counter += 1
        else
          counter = 0
        end

        if counter > 1 && is_whitespace
          next
        end

        if is_capitalize && !is_whitespace
          char = char.capitalize

          is_capitalize = false
        end

        if add_whitespace_after && counter < 1
          char = ' ' + char
          add_whitespace_after = false
        else

        end

        case char
          when '.', '!', '?', '...'
            add_whitespace_after = true
            is_capitalize = true
            sentence.chop! if sentence[-1] == ' '
          when ',', ':', ';', "'", '"'
            add_whitespace_after = true
            sentence.chop! if sentence[-1] == ' '
          when '-'
            add_whitespace_after = true
            if sentence[-1] != ' '
              char = ' ' + char
            end
        end

        sentence.concat(char)
      end
      sentence
    end

    it 'simple1' do
      expect(format_text(' s  text')).to eql('S text')
    end

    it 'simple2' do
      expect(format_text('!  some')).to eql('! Some')
    end

    it 'simple3' do
      expect(format_text('! some')).to eql('! Some')
    end

    it 'simple4' do
      expect(format_text('so-me')).to eql('So - me')
    end

    it 'simple5' do
      expect(format_text('so - me')).to eql('So - me')
    end

    it 'simple6' do
      expect(format_text('s "e')).to eql('S" e')
    end


    it '"hello   .how are you! some word .get ,problem"' do
      expect(format_text("hello   .how are you! some word .get ,problem")).to eql("Hello. How are you! Some word. Get, problem")
    end
  end

  context 'Path' do
    class Path

      def initialize(path)
        @current_path = path
      end

      def current_path
        @current_path
      end

      def cd(new_path)
        pathes = @current_path.split('/')
        new_path_arrays = new_path.split('/')
        size = new_path_arrays.size

        new_path_arrays.each_with_index do |directory, index|
          case
            when directory == '..'
              pathes.pop
              return @current_path if pathes.empty? && index+1 < size
            when directory == '.'
            when directory == ''
              @current_path = new_path
            else
              pathes.push(directory)
          end
        end

        @current_path = pathes.join('/')
      end

    end

    it ' ' do
      path = Path.new('/a/b/c/d')
      path.cd('../x')
      expect(path.current_path).to eql('/a/b/c/x')
    end
  end
end