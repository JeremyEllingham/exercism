class Year

  # Checks if a year is a leap year
  # Expects an integer
  # Returns a boolean
  def self.leap?(year)
    if year % 100 == 0
      year % 400 == 0 ? (return true) : (return false)
    end
    return true if year % 4 === 0
  end
end

# Required for Exercism.io
# Would usually be in its own file
module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
