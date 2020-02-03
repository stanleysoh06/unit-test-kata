require 'rspec'
require_relative '../lib/word_count'

describe 'Word_Count_Spec' do

  word_counter = WordCount.new

  let(:word_count_map_1) { { 'come'=>1, 'in'=>1, 'olly'=>2, 'free'=>1 } }
  let(:word_count_map_2) { { 'come'=>1, 'in'=>6, 'olly'=>3 } }
  let(:word_count_map_3) { { 'come'=>12 } }
  let(:word_count_map_4) { { 'come'=>4, 'free'=>2 } }

  it 'is an empty string' do
    expect(word_counter.count_words('')).to eq 'n/a'
  end

  it 'phrases has input equals to example 1' do
    expect(word_counter.count_words('olly olly in come free')).to eq word_count_map_1
  end

  it 'phrases has input equals to example 2' do
    expect(word_counter.count_words('olly olly come in olly in in in in in')).to eq word_count_map_2
  end

  it 'phrases has input equals to example 3' do
    expect(word_counter.count_words('come come come come come come come come come come come come')).to eq word_count_map_3
  end

  it 'phrases has input equals to example 4' do
    expect(word_counter.count_words('come free come free come come')).to eq word_count_map_4
  end

end