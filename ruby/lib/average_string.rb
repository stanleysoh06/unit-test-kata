class AverageString
  @@numbers_map = {
      'zero' => 0,
      'one' => 1,
      'two' => 2,
      'three' => 3,
      'four' => 4,
      'five' => 5,
      'six' => 6,
      'seven' => 7,
      'eight' => 8,
      'nine' => 9}

  def get_average_string(input)

    begin
      words = input.split(" ")
      numbers = words.map { |w| @@numbers_map[w] }
      total = numbers.reduce(:+)

      average = total / words.length
      @@numbers_map.key(average)
    rescue
      'n/a'
    end

  end


end
