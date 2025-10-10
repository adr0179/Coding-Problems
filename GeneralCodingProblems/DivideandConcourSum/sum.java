package DivideandConcourSum;

public class sum {
    public static void main(String[] args) {
        int[] nums = {5,2,4,1};
        System.out.println(sumation(nums, 0, nums.length-1));
    }

    public static int sumation(int[] arr, int start, int end) {
        if (start == end) {
            return arr[start];
        } else {
            int mid = (start+end)/2;
            return sumation(arr, start, mid) + sumation(arr, mid+1, end);
        }
    }
}