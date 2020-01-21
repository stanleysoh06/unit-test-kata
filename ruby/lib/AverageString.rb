class AverageString

  def getAverageString(input)

    #Declare valid string map
    validStringMap = {
        'zero'=> 0,
        'one'=>1,
        'two'=>2,
        'three'=>3,
        'four'=>4,
        'five'=>5,
        'six'=>6,
        'seven'=>7,
        'eight'=>8,
        'nine'=>9,}

    #Convert the string input into map to be compared
    inputStringMap = input.split(" ")

    if input != ''

      average = 0;

      #if not nil, check for out of bound string
      inputStringMap.each do |inputText|
         #add up valid numbers
         if  validStringMap.key?(inputText)
           average += validStringMap[inputText]
         else
           #if number is out of range, (0-9), return n/a immediately
           return 'n/a'
         end

      end
    else
      return 'n/a'
    end

    #if everything is valid, returns the average
    validStringMap.key(average/inputStringMap.length)

  end

end
