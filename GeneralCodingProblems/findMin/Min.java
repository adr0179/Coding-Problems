package GeneralCodingProblems.findMin;

public class Min {
    public static int findMin(int[] array) {
        // start at the beginning
        int min = array[0];

        // check size of array
        if (array.length == 1) {
            return array[0];
        }

        for (int i = 0; i < array.length; i++) {
            // check if at the end of array
            if (i == array.length - 1) {
                return min;
            }

            // change the min if current min is bigger than the next
            if (min > array[i + 1]) {
                min = array[i + 1];
            } else {
                continue; // otherwise continue
            }
        }

        // return final result
        return min;
    }
    public static void main(String[] args) {
        int[] intArr = {2,3,4,5,6,7,1,8,9,10};

        System.out.println(findMin(intArr));
    }
}
