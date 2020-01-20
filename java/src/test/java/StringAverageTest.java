import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class StringAverageTest {

    StringAverage sa = new StringAverage();

    @Test
    public void testAverage() {

        //test average number from a given string
        assertEquals("five",sa.testString("zero six eight nine"));

    }

    @Test
    public void testEmptyInput() {

        //test empty input
        assertEquals("n/a",sa.testString(""));

    }

    @Test
    public void testOutOfRange() {

        //test numbers bigger than NINE or out of range
        assertEquals("n/a",sa.testString("zero eleven six eight nine"));

    }


}