# creates a to integer method that converts a string to an integer
module ToInteger
  def self.negative?(num_array)
    num_array.include?(45)
  end

  def self.negatve_remover(num_array)
    num_array.delete_if { |num| num == 45 }
  end

  def self.string_to_integer_array(string)
    string.split('').map do |num|
      num.ord
    end
  end
  def self.conversion_to_decimal_system(num_array)
    num_array.map do |num|
      num - 48
    end
  end

  def self.to_integer(string_input)
    num_array = string_to_integer_array(string_input)
    negative_check = negative?(num_array)
    num_array = negatve_remover(num_array)
    num_array = conversion_to_decimal_system(num_array)
    power = num_array.size - 1
    i = 0
    while i <= num_array.size - 1
      num_array[i] = num_array[i] * 10**power
      i += 1
      power -= 1
    end
    negative_check ? num_array.reduce(:+) * - 1 : num_array.reduce(:+)
  end
end
puts ToInteger.to_integer('34343')
