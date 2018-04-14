class Complement

  # Convert DNA encoded sequence to RNA encoded sequence
  # Expects a string
  # Returns a string, empty string if input is invalid
  def self.of_dna(input)
    @temp = input
    @rna = ''

    @temp.each_char do |char|
      case char
      when 'C' then @rna += 'G'
      when 'G' then @rna += 'C'
      when 'T' then @rna += 'A'
      when 'A' then @rna += 'U'
      else return ''
      end
    end

    @rna
  end

end

# Required for Exercism
# Usually would be included in its own file
module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end
