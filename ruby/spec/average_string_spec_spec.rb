require 'rspec'
require_relative '../lib/AverageString'

  describe 'AverageStringSpec' do

    #create AverageString object to be used for testing
    stringAverageCalculator = AverageString.new

    it 'Empty string' do
      expect(stringAverageCalculator.getAverageString('')).to eq 'n/a'
    end

    it 'Out of range string' do
      expect(stringAverageCalculator.getAverageString('zero two sixty six eight nine')).to eq 'n/a'
    end

    it 'Valid string and get the average' do
      expect(stringAverageCalculator.getAverageString('zero two six six eight nine')).to eq 'five'
    end

end