class WordCount

  def getInputCount(input)

    if input != ''

      inputStringMap = input.split(" ")

      inputStringMap.each do |inputChar|
        if inputChar.match('[a-zA-Z]+').nil?
          return 'not a valid string'
        end
      end

      result = Hash.new

      #loop through the input string, if it does not exist, add the result map with value 1, if it exist, value +1
      inputStringMap.each do |inputChar|
        if result.key?(inputChar)
          currentCount = result[inputChar]
          currentCount += 1
          result[inputChar] = currentCount
        else
          result[inputChar] = 1
        end
      end

      return result

    else
      return 'n/a'
    end

  end
end
