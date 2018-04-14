class Hamming

  # Takes two strings of equal length and returns the Hamming distance
  # Returns ArgumentError if strings are different length
  # Returns an integer
  def self.compute(sequence1, sequence2)
    @sequence1 = sequence1
    @sequence2 = sequence2
    @hamming_distance = 0

    raise ArgumentError.new('Sequence strings must be the same length.') unless @sequence1.length == @sequence2.length

    @sequence1.each_char.with_index do |char, index|
      @hamming_distance += 1 if char != @sequence2[index]
    end

    @hamming_distance
  end

end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
