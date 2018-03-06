# creates a to integer method that converts a string to an integer
module ToInteger
  def self.negative?(num_array)
    num_array.include?(nil) || num_array.include?(45)
  end

  def self.negatve_remover(num_array)
    num_array.delete_if { |num| num == nil }
    num_array.delete_if { |num| num == 45 }
  end

  def self.string_to_char_array(string)
    char_array = string.chars
    if string.include?('.')
      char_array = string.split('.')[0].chars
    end
    char_array
  end

  def self.array_of_integers_into_integer(num_array)
    total = 0
    num_array.reverse.each_with_index do |num, power|
      total += num * 10**power
    end
    total
  end

  def self.char_to_ASCII_value_array(char_array)
    char_array.map(&:ord)
  end

  def self.ascii_to_integer_array(ascii_value_array)
    ascii_value_array.map do |value|
      value - 48
    end
  end

  def self.to_integer(string_input)
    char_array = string_to_char_array(string_input)
    ascii_value_array = char_to_ASCII_value_array(char_array)
    negative_check = negative?(ascii_value_array)
    negative_check ? negatve_remover(ascii_value_array) : ascii_value_array
    num_array = ascii_to_integer_array(ascii_value_array)
    integer = array_of_integers_into_integer(num_array)
    negative_check ? integer * - 1 : integer
  end
end
