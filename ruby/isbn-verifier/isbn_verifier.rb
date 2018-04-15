class IsbnVerifier

  # Checks a string for ISBN validity
  # Expects a string input
  # Returns a boolean
  def self.valid?(input)
    input = input.gsub('-', '')
    # Check input contains only valid characters and is the correct length
    input.each_char{ |char| return false unless '0123456789X'.include?(char) }
    return false unless input.length == 10

    # Calculate using ISBN calculation formula
    # ISBN_FORMULA is valid if (x1 * 10 + x2 * 9 + x3 * 8 + x4 * 7 + x5 * 6 + x6 * 5 + x7 * 4 + x8 * 3 + x9 * 2 + x10 * 1) mod 11 == 0
    # Note the final value has to substitute 10 if passed 'X'
    isbn_subtotal = input[0].to_i * 10
    isbn_subtotal += input[1].to_i * 9
    isbn_subtotal += input[2].to_i * 8
    isbn_subtotal += input[3].to_i * 7
    isbn_subtotal += input[4].to_i * 6
    isbn_subtotal += input[5].to_i * 5
    isbn_subtotal += input[6].to_i * 4
    isbn_subtotal += input[7].to_i * 3
    isbn_subtotal += input[8].to_i * 2

    if input[9] == 'X'
      isbn_subtotal += 10
    else
      isbn_subtotal += input[9].to_i
    end

    return (isbn_subtotal % 11) == 0

  end

end

# Required just for Exercism
# Would usually be in its own file
module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
