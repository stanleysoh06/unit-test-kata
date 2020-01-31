require 'rspec'
require_relative '../lib/average_string'

describe 'AverageStringSpec' do

    #create AverageString object to be used for testing
    string_average_calculator = AverageString.new

    it 'Empty string' do
      expect(string_average_calculator.get_average_string('')).to eq 'n/a'
    end

    it 'Out of range string' do
      expect(string_average_calculator.get_average_string('zero two sixty six eight nine')).to eq 'n/a'
    end

    it 'Mispelled' do
      expect(string_average_calculator.get_average_string('zero two sixty sixxxxxx eight nine')).to eq 'n/a'
    end

    it 'numbers entry' do
      expect(string_average_calculator.get_average_string('zero 0 12 3 4 1 23')).to eq 'n/a'
    end

    it 'Valid string and get the average whole number' do
      expect(string_average_calculator.get_average_string('eight eight five')).to eq 'seven'
    end

    it 'Valid string and get the average number with decimal' do
      expect(string_average_calculator.get_average_string('zero two six six eight nine')).to eq 'five'
    end

    it 'Single number entry' do
      expect(string_average_calculator.get_average_string('nine')).to eq 'nine'
    end

end