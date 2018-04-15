class Raindrops

  RAINDROPS = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  # Converts an integer into a Raindrops language string
  # Returns the plain integer as a string if no Raindrops modifications are made
  def self.convert(input)
    @input = input
    @output = ''

    RAINDROPS.each { |integer, text| @output += text if @input % integer == 0 }
    @output = @input.to_s if @output == ''

    @output
  end

end

# Required for Exercism.io
# Would usually be in its own file
module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
