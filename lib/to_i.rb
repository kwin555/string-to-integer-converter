# creates a to integer method that converts a string to an integer
module ToInteger
  def self.string_to_integer_array(string)
    string.split('').map do |num|
      num.ord - 48
    end
  end

  def self.to_integer(string_input)
    num_array = string_to_integer_array(string_input)
    power = num_array.size - 1
    i = 0
    while i <= num_array.size - 1
      num_array[i] = num_array[i] * 10**power
      i += 1
      power -= 1
    end
    num_array.reduce(:+)
  end
end
