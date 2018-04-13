class PhoneNumber

  # Cleans phone number (string) to comply with North American Numbering Plan (NANP) standard
  # If input is valid, returns 10 character, digits only string
  # If input is invalid, returns nil
  def clean(input)
    # Remove all characters except integers
    # Catches both letters and special characters
    @temp = input
    @result = ''
    @temp.each_char do |char|
      @result += char if '0123456789'.include?(char)
    end

    # 11 digit numbers must have a '1' international code or they are invalid
    if @result.length == 11
      @result[0] == '1' ? @result = @result[1..10] : return
    end

    # Catch any inputs that are too long or short
    return nil unless @result.length == 10

    # Ensure Area code and exchange code are valid
    '23456789'.include?(@result[0]) && '23456789'.include?(@result[3]) ? @result : return
  end

end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
