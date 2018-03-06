require 'spec_helper'

RSpec.describe ToInteger, type: :model do
  describe '.to_integer' do
    it 'should return the interger version of the string input' do
      expect(ToInteger.to_integer('34234')).to eq 34_234
    end
  end
  describe '.to_integer' do
    it 'should return the interger version of the string input' do
      expect(ToInteger.to_integer('-90')).to eq -90
    end
  end
  describe '.is_negative?' do
    it 'checks for ascii value of 45 which is a negative sign' do
      expect(ToInteger.negative?([45])).to eq true
    end
  end
  describe '.string_to_integer_array' do
    it 'should return the interger version of the string input' do
      expect(ToInteger.string_to_integer_array('34234')).to eq [51, 52, 50, 51, 52]
    end
  end
end
