require 'rspec'
require_relative '../lib/Word_Count'

describe 'Word_Count_Spec' do

  #Create Word_Count object to be used for testing
  wordCounter = WordCount.new

  wordCountMap = { "come"=>1, "in"=>1, "olly"=>2, "free"=>1 }

  it 'is an empty string' do
    expect(wordCounter.getInputCount('')).to eq 'n/a'
  end

  it 'contains numbers' do
    expect(wordCounter.getInputCount('1 2 3 4 5 6 7 8 9 10 11')).to eq 'not a valid string'
  end

  it 'contains symbol' do
    expect(wordCounter.getInputCount('#$###@@!! *(* ( )) *(')).to eq 'not a valid string'
  end

  it 'contains invalid string (numbers and symbols)' do
    expect(wordCounter.getInputCount('!@# 123 1 2 32 (((** 1)(')).to eq 'not a valid string'
  end

  it 'contains valid string string' do
    expect(wordCounter.getInputCount('olly olly in come free')).to eql(wordCountMap)
  end

end