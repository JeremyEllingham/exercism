class Pangram

  ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

  # Check if a string contains every letter of the alphabet
  # Case insensitive
  # Returns a boolean
  def self.pangram?(input)
    ALPHABET.each_char { |char| return false unless input.downcase.include?(char) }
    return true
  end

end

# Required for Exercism.io
# Would usually be in its own file
module BookKeeping
  VERSION = 6 # Where the version number matches the one in the test.
end
