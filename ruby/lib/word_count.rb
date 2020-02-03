class WordCount

  def count_words(input)

    if input != ''
      words = input.split(" ")
      word_count = words.each_with_object(Hash.new(0)) {|word, count| count[word] += 1}
      word_count
    else
      'n/a'
    end

  end
end
