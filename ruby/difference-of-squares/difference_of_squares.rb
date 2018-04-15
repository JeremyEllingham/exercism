class Squares

  def initialize(number)
    @number = number
  end

  # Returns (1 + 2 + 3 + 4 ... + @number)**2
  def square_of_sum
    @result = 0
    (1..@number).each { |int| @result += int}
    @result**2
  end

  # Returns 1**2 + 2**2 + 3**2 + 4**2 ... + @number**2
  def sum_of_squares
    @result = 0
    (1..@number).each { |int| @result += int**2}
    @result
  end

  def difference
    self.square_of_sum - self.sum_of_squares
  end

end

# Required for Exercism.io
# Would usually be in its own file
module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end
