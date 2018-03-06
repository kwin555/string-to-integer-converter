# creates a to integer method that converts a string to an integer
module ToInteger
  def self.negative?(num_array)
    num_array.include?(nil)
  end

  def self.negatve_remover(num_array)
    num_array.delete_if { |num| num == nil }
  end

  def self.string_to_char_array(string)
    string.split('').map do |num|
      num
    end
  end

  def self.array_of_integers_into_integer(num_array)
    power = num_array.size - 1
    i = 0
    while i <= num_array.size - 1
      num_array[i] = num_array[i] * 10**power
      i += 1
      power -= 1
    end
    num_array.reduce(:+)
  end

  def self.char_to_integer_array(char_array)
    nums = []
    map = {
      '0' => 0,
      '1' => 1,
      '2' => 2,
      '3' => 3,
      '4' => 4,
      '5' => 5,
      '6' => 6,
      '7' => 7,
      '8' => 8,
      '9' => 9
    }
    char_array.each do |char|
      num = map[char]
      nums << num
    end
    nums
  end

  def self.to_integer(string_input)
    char_array = string_to_char_array(string_input)
    num_array = char_to_integer_array(char_array)
    negative_check = negative?(num_array)
    negative_check ? negatve_remover(num_array) : num_array
    integer = array_of_integers_into_integer(num_array)
    negative_check ? integer * - 1 : integer
  end
end
