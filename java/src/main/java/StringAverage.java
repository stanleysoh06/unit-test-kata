import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

public class StringAverage {

    public String testString(String input) {

        //Number strings that are within the valid range for average
        Map<String, Integer> numberMap = new HashMap<>();
        numberMap.put("zero",0);
        numberMap.put("one",1);
        numberMap.put("two",2);
        numberMap.put("three",3);
        numberMap.put("four",4);
        numberMap.put("five",5);
        numberMap.put("six",6);
        numberMap.put("seven",7);
        numberMap.put("eight",8);
        numberMap.put("nine",9);

        //check for empty string
        if (input.isEmpty()) {
            return "n/a";
        }

        //check for out of range number
        List<String> numberList = new ArrayList<String>(Arrays.asList(input.split(" ")));

        int total = 0;

        for (String number: numberList) {
            try {
                int numberValue = numberMap.get(number);

                total += numberValue;

            } catch (NullPointerException e) {
                return "n/a";
            }
        }

        //find the average of the number string if the above conditions are valid
        String result = "";

        int average = Math.round(total/numberList.size());

        for (String numberMapKey: numberMap.keySet()) {

            if (numberMap.get(numberMapKey) == average) {

                result = numberMapKey;

            }

        }


        return result;

    }

}

