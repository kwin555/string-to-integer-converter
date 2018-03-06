require 'spec_helper'

RSpec.describe ToInteger, type: :model do
  describe '.to_integer' do
    it 'should return the interger version of the string input' do
      expect(ToInteger.to_integer('34234')).to eq 34_234
    end
  end
  describe '.string_to_integer_array' do
    it 'should return the interger version of the string input' do
      expect(ToInteger.string_to_integer_array('34234')).to eq [3, 4, 2, 3, 4]
    end
  end
end
