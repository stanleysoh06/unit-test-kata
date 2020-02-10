class WordCount

  def count_words(input)

    if input != ''
      words = input.split(" ")
      words.each_with_object(Hash.new(0)) {|word, count| count[word] += 1}
    else
      'n/a'
    end

  end
end
