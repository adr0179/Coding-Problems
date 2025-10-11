package Y2DS.Subsets;
import java.util.List;
import java.util.ArrayList;

public class Subset {
    public static void main(String[] args) {
        int[] nums = new int[]{1,2,3};
        List<List<Integer>> results = generateSubsets(nums);
        System.out.println(results);
    }

    public static List<List<Integer>> generateSubsets(int[] nums) {
        List<List<Integer>> res = new ArrayList<>();
        List<Integer> subset = new ArrayList<>();
        createSubset(nums, 0, subset, res);
        return res;
    }

    public static void createSubset(int[] arr, int i, List<Integer> subset, List<List<Integer>> res) {
        if (i == arr.length) {
            res.add(new ArrayList<>(subset));
            return;
        }

        subset.add(arr[i]);
        createSubset(arr, i + 1, subset, res);
        subset.remove(subset.size() - 1);

        createSubset(arr, i + 1, subset, res);
    }
}