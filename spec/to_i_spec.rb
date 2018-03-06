require 'spec_helper'

RSpec.describe ToInteger, type: :model do
  describe '.string_to_char_array' do
    it 'should split the string input to an array of chars' do
      expect(ToInteger.string_to_char_array('34234')).to eq ['3', '4', '2', '3', '4']
    end
  end
  describe '.char_to_integer_array' do
    it 'should should convert the array of chars in to an array of integers' do
      expect(ToInteger.char_to_integer_array(['3', '4', '2', '3', '4'])).to eq [3, 4, 2, 3, 4]
    end
  end
  describe '.array_of_integers_into_integer' do
    it 'should should convert the array of chars in to an array of integers' do
      expect(ToInteger.array_of_integers_into_integer([3, 4, 2, 3, 4])).to eq 34_234
    end
  end
  describe '.negative?' do
    it 'finds a nil in the array of integers' do
      expect(ToInteger.negative?([nil, 4, 2, 3, 4])).to eq true
    end
  end
  describe '.negatve_remover' do
    it 'removes the nil from the array of integers' do
      expect(ToInteger.negatve_remover([nil, 4, 2, 3, 4])).to eq [4, 2, 3, 4]
    end
  end
  describe '.to_integer' do
    it 'takes a string and converts to integer (positive)' do
      expect(ToInteger.to_integer('34242')).to eq 34_242
    end
  end
  describe '.to_integer' do
    it 'takes a string and converts to integer (negative)' do
      expect(ToInteger.to_integer('-34242')).to eq (-34_242)
    end
  end
end
