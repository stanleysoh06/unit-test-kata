class AverageString

  def get_average_string(input)

    begin
      total = compute_total_from_input(input)
      average_number = calculate_average(total,total_word_count(input))
      convert_number_to_letters(average_number)
    rescue
      'n/a'
    end

  end

  def total_word_count(input)
    input.split(" ").length
  end

  def convert_number_to_letters (number)
    string_map = get_valid_number_string
    string_map.key(number)
  end

  def compute_total_from_input(input_string)
    valid_string_map = get_valid_number_string
    input_string_map = input_string.split(" ")

    total = 0

    input_string_map.each do |input_text|
      total += valid_string_map[input_text]
    end
    total
  end

  def get_valid_number_string
    {
        'zero'=>0,
        'one'=>1,
        'two'=>2,
        'three'=>3,
        'four'=>4,
        'five'=>5,
        'six'=>6,
        'seven'=>7,
        'eight'=>8,
        'nine'=>9}
  end

  def calculate_average(sum_of_numbers, total_count)
    sum_of_numbers/total_count
  end

end
