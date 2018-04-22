class Sieve

  def initialize(maximum)
    @maximum = maximum
  end

  # Performs Eratosthenes Sieve algorithm up to @maximum
  # Returns an array of primes
  def primes
    result = (2..@maximum).to_a

    result.each do |counter|
      for int in result
        result.delete(int) if (int != counter) && (int % counter == 0)
      end
    end

    result
  end

end

# Required for Exercism.io
# Would usually be in its own file
module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
