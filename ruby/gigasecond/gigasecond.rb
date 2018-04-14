class Gigasecond

  # Expects a time input
  # Returns a gigasecond (10^9 or 1,000,000,000) seconds from input
  def self.from(time)
    time + 1000000000
  end

end

module BookKeeping
  VERSION = 6 # Where the version number matches the one in the test.
end
