def to_i(input)
  chars = input.chars
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
    '9' => 9,
  }
  chars.each do |char|
    num = map[char]
    nums << num
  end
  negative_checker = nums.include?(nil)
  nums.delete_if { |num| num == nil }
end

puts to_i('-2232424').inspect
