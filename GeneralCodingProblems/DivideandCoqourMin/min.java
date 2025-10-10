package DivideandCoqourMin;

public class min {
    public static void main(String[] args) {
        int[] arr = {1,2,4,5,0,-1,4,5,8};
        System.out.println(mininum(arr,0,arr.length-1));
    }

    public static int mininum(int[] arr, int start, int end) {
        if (start == end) {
            return arr[start];
        } else {
            int mid = (start + end) / 2;
            return Math.min(mininum(arr, start, mid), mininum(arr, mid+1, end));
        }
    }
}